
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int cwidth; int cheight; size_t curframe; struct se401_frame* frame; int readcount; int framecount; int error; } ;
struct se401_scratch {unsigned char* data; int length; int offset; } ;
struct se401_frame {unsigned char* data; int curpix; scalar_t__ grabstate; unsigned char* curline; int curlinepix; } ;


 scalar_t__ FRAME_DONE ;
 scalar_t__ FRAME_GRABBING ;
 scalar_t__ FRAME_READY ;
 int SE401_NUMFRAMES ;

__attribute__((used)) static inline void decode_bayer(struct usb_se401 *se401,
      struct se401_scratch *buffer)
{
 unsigned char *data = buffer->data;
 int len = buffer->length;
 int offset = buffer->offset;
 int datasize = se401->cwidth * se401->cheight;
 struct se401_frame *frame = &se401->frame[se401->curframe];
 unsigned char *framedata = frame->data, *curline, *nextline;
 int width = se401->cwidth;
 int blineoffset = 0, bline;
 int linelength = width * 3, i;


 if (frame->curpix == 0) {
  if (frame->grabstate == FRAME_READY)
   frame->grabstate = FRAME_GRABBING;

  frame->curline = framedata + linelength;
  frame->curlinepix = 0;
 }

 if (offset != frame->curpix) {

  frame->curpix = 0;
  se401->error++;
  return;
 }


 if (frame->curpix + len > datasize)
  len = datasize-frame->curpix;

 if (se401->cheight % 4)
  blineoffset = 1;
 bline = frame->curpix / se401->cwidth+blineoffset;

 curline = frame->curline;
 nextline = curline + linelength;
 if (nextline >= framedata+datasize * 3)
  nextline = curline;
 while (len) {
  if (frame->curlinepix >= width) {
   frame->curlinepix -= width;
   bline = frame->curpix / width + blineoffset;
   curline += linelength*2;
   nextline += linelength*2;
   if (curline >= framedata+datasize * 3) {
    frame->curlinepix++;
    curline -= 3;
    nextline -= 3;
    len--;
    data++;
    frame->curpix++;
   }
   if (nextline >= framedata+datasize*3)
    nextline = curline;
  }
  if (bline & 1) {
   if (frame->curlinepix & 1) {
    *(curline + 2) = *data;
    *(curline - 1) = *data;
    *(nextline + 2) = *data;
    *(nextline - 1) = *data;
   } else {
    *(curline + 1) =
     (*(curline + 1) + *data) / 2;
    *(curline-2) =
     (*(curline - 2) + *data) / 2;
    *(nextline + 1) = *data;
    *(nextline - 2) = *data;
   }
  } else {
   if (frame->curlinepix & 1) {
    *(curline + 1) =
     (*(curline + 1) + *data) / 2;
    *(curline - 2) =
     (*(curline - 2) + *data) / 2;
    *(nextline + 1) = *data;
    *(nextline - 2) = *data;
   } else {
    *curline = *data;
    *(curline - 3) = *data;
    *nextline = *data;
    *(nextline - 3) = *data;
   }
  }
  frame->curlinepix++;
  curline -= 3;
  nextline -= 3;
  len--;
  data++;
  frame->curpix++;
 }
 frame->curline = curline;

 if (frame->curpix >= datasize) {

  framedata += linelength;
  for (i = 0; i < linelength; i++) {
   framedata--;
   *framedata = *(framedata + linelength);
  }

  for (i = 0; i < se401->cheight; i++) {
   *framedata = *(framedata + 3);
   *(framedata + 1) = *(framedata + 4);
   *(framedata + 2) = *(framedata + 5);
   framedata += linelength;
  }
  frame->curpix = 0;
  frame->grabstate = FRAME_DONE;
  se401->framecount++;
  se401->readcount++;
  if (se401->frame[(se401->curframe + 1) &
      (SE401_NUMFRAMES - 1)].grabstate == FRAME_READY) {
   se401->curframe = (se401->curframe+1) &
       (SE401_NUMFRAMES-1);
  }
 }
}
