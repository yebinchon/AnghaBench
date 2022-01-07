
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format; int bytes_per_pixel; } ;
struct usbvision_frame {int frmwidth; int frmheight; unsigned char* data; int width; int curline; int v4l2_linesize; TYPE_1__ v4l2_format; } ;
struct usb_usbvision {unsigned char* intra_frame_buffer; int block_pos; int max_strip_len; int comprblock_pos; int strip_len_errors; int strip_line_number_errors; int strip_magic_errors; struct usbvision_frame* cur_frame; } ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;


 int MAX_FRAME_WIDTH ;
 int USBVISION_STRIP_HEADER_LEN ;
 int USBVISION_STRIP_LEN_MAX ;
 unsigned char USBVISION_STRIP_MAGIC ;





 int V4L2_PIX_FMT_YUV422P ;
 int V4L2_PIX_FMT_YUYV ;
 int V4L2_PIX_FMT_YVU420 ;
 int YUV_TO_RGB_BY_THE_BOOK (unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int parse_state_continue ;
 int parse_state_next_frame ;
 int parse_state_out ;
 int scratch_get (struct usb_usbvision*,unsigned char*,int) ;
 int scratch_get_extra (struct usb_usbvision*,unsigned char*,int*,int) ;
 int scratch_len (struct usb_usbvision*) ;
 int scratch_set_extra_ptr (struct usb_usbvision*,int*,int ) ;
 int usbvision_adjust_compression (struct usb_usbvision*) ;
 int usbvision_decompress (struct usb_usbvision*,unsigned char*,unsigned char*,int*,int*,int) ;
 int usbvision_request_intra (struct usb_usbvision*) ;

__attribute__((used)) static enum parse_state usbvision_parse_compress(struct usb_usbvision *usbvision,
        long *pcopylen)
{




 struct usbvision_frame *frame;
 unsigned char *f, *u = ((void*)0), *v = ((void*)0);
 unsigned char strip_data[400];
 unsigned char strip_header[3];
 int idx, idx_end, strip_len, strip_ptr, startblock_pos, block_pos, block_type_pos;
 int clipmask_index, bytes_per_pixel, rc;
 int image_size;
 unsigned char rv, gv, bv;
 static unsigned char *Y, *U, *V;

 frame = usbvision->cur_frame;
 image_size = frame->frmwidth * frame->frmheight;
 if ((frame->v4l2_format.format == V4L2_PIX_FMT_YUV422P) ||
     (frame->v4l2_format.format == V4L2_PIX_FMT_YVU420)) {

  f = frame->data + (frame->width * frame->curline);
 } else
  f = frame->data + (frame->v4l2_linesize * frame->curline);

 if (frame->v4l2_format.format == V4L2_PIX_FMT_YUYV) {

  u = frame->data
   + image_size
   + (frame->frmwidth >> 1) * frame->curline;
  v = u + (image_size >> 1);
 } else if (frame->v4l2_format.format == V4L2_PIX_FMT_YVU420) {
  v = frame->data + image_size + ((frame->curline * (frame->width)) >> 2);
  u = v + (image_size >> 2);
 }

 if (frame->curline == 0)
  usbvision_adjust_compression(usbvision);

 if (scratch_len(usbvision) < 3)
  return parse_state_out;


 scratch_set_extra_ptr(usbvision, &strip_ptr, 0);
 scratch_get_extra(usbvision, &strip_header[0], &strip_ptr,
    3);

 if (strip_header[0] != 0x5A) {

  usbvision->strip_magic_errors++;
  return parse_state_next_frame;
 }

 if (frame->curline != (int)strip_header[2]) {

  usbvision->strip_line_number_errors++;
 }

 strip_len = 2 * (unsigned int)strip_header[1];
 if (strip_len > 400) {


  usbvision_request_intra(usbvision);
 }

 if (scratch_len(usbvision) < strip_len) {

  return parse_state_out;
 }

 if (usbvision->intra_frame_buffer) {
  Y = usbvision->intra_frame_buffer + frame->frmwidth * frame->curline;
  U = usbvision->intra_frame_buffer + image_size + (frame->frmwidth / 2) * (frame->curline / 2);
  V = usbvision->intra_frame_buffer + image_size / 4 * 5 + (frame->frmwidth / 2) * (frame->curline / 2);
 } else {
  return parse_state_next_frame;
 }

 bytes_per_pixel = frame->v4l2_format.bytes_per_pixel;
 clipmask_index = frame->curline * MAX_FRAME_WIDTH;

 scratch_get(usbvision, strip_data, strip_len);

 idx_end = frame->frmwidth;
 block_type_pos = 3;
 startblock_pos = block_type_pos + (idx_end - 1) / 96 + (idx_end / 2 - 1) / 96 + 2;
 block_pos = startblock_pos;

 usbvision->block_pos = block_pos;

 rc = usbvision_decompress(usbvision, strip_data, Y, &block_pos, &block_type_pos, idx_end);
 if (strip_len > usbvision->max_strip_len)
  usbvision->max_strip_len = strip_len;

 if (frame->curline % 2)
  rc = usbvision_decompress(usbvision, strip_data, V, &block_pos, &block_type_pos, idx_end / 2);
 else
  rc = usbvision_decompress(usbvision, strip_data, U, &block_pos, &block_type_pos, idx_end / 2);

 if (block_pos > usbvision->comprblock_pos)
  usbvision->comprblock_pos = block_pos;
 if (block_pos > strip_len)
  usbvision->strip_len_errors++;

 for (idx = 0; idx < idx_end; idx++) {
  if (frame->v4l2_format.format == V4L2_PIX_FMT_YUYV) {
   *f++ = Y[idx];
   *f++ = idx & 0x01 ? U[idx / 2] : V[idx / 2];
  } else if (frame->v4l2_format.format == V4L2_PIX_FMT_YUV422P) {
   *f++ = Y[idx];
   if (idx & 0x01)
    *u++ = U[idx >> 1];
   else
    *v++ = V[idx >> 1];
  } else if (frame->v4l2_format.format == V4L2_PIX_FMT_YVU420) {
   *f++ = Y[idx];
   if (!((idx & 0x01) | (frame->curline & 0x01))) {


    *u++ = U[idx >> 1];
    *v++ = V[idx >> 1];
   }
  } else {
   YUV_TO_RGB_BY_THE_BOOK(Y[idx], U[idx / 2], V[idx / 2], rv, gv, bv);
   switch (frame->v4l2_format.format) {
   case 132:
    *f++ = Y[idx];
    break;
   case 129:
    *f++ = (0x1F & rv) |
     (0xE0 & (gv << 5));
    *f++ = (0x03 & (gv >> 3)) |
     (0x7C & (bv << 2));
    break;
   case 128:
    *f++ = (0x1F & rv) |
     (0xE0 & (gv << 5));
    *f++ = (0x07 & (gv >> 3)) |
     (0xF8 & bv);
    break;
   case 131:
    *f++ = rv;
    *f++ = gv;
    *f++ = bv;
    break;
   case 130:
    *f++ = rv;
    *f++ = gv;
    *f++ = bv;
    f++;
    break;
   }
  }
  clipmask_index++;
 }

 if (frame->v4l2_format.format != V4L2_PIX_FMT_YVU420)
  *pcopylen += frame->v4l2_linesize;
 else
  *pcopylen += frame->curline & 0x01 ? frame->v4l2_linesize : frame->v4l2_linesize << 1;

 frame->curline += 1;

 if (frame->curline >= frame->frmheight)
  return parse_state_next_frame;
 return parse_state_continue;

}
