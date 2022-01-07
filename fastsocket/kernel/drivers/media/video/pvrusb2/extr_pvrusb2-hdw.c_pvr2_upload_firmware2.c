
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pvr2_hdw {TYPE_1__* hdw_desc; int usb_dev; scalar_t__ state_encoder_runok; int encoder_run_timer; scalar_t__ enc_cur_valid; } ;
struct firmware {unsigned int size; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ signal_routing_scheme; scalar_t__ flag_skip_cx23416_firmware; } ;


 int ARRAY_SIZE (char const**) ;

 int EINVAL ;
 int ENOMEM ;
 unsigned int FIRMWARE_CHUNK_SIZE ;
 int FX2CMD_FWPOST1 ;
 int FX2CMD_MEMSEL ;
 int GFP_KERNEL ;
 int HZ ;
 int PVR2_FIRMWARE_ENDPOINT ;
 scalar_t__ PVR2_ROUTING_SCHEME_GOTVIEW ;
 int PVR2_TRACE_ERROR_LEGS ;
 int del_timer_sync (int *) ;
 int kfree (void*) ;
 void* kmalloc (unsigned int,int ) ;
 int memcpy (void*,scalar_t__,unsigned int) ;
 int pvr2_hdw_cmd_deep_reset (struct pvr2_hdw*) ;
 int pvr2_hdw_gpio_chg_dir (struct pvr2_hdw*,int,int) ;
 int pvr2_hdw_gpio_chg_out (struct pvr2_hdw*,int,int) ;
 int pvr2_issue_simple_cmd (struct pvr2_hdw*,int) ;
 int pvr2_locate_firmware (struct pvr2_hdw*,struct firmware const**,char*,int ,char const**) ;
 int pvr2_trace (int ,char*,...) ;
 int pvr2_write_register (struct pvr2_hdw*,int,int) ;
 int release_firmware (struct firmware const*) ;
 int swab32 (int ) ;
 int trace_firmware (char*,...) ;
 int trace_stbit (char*,scalar_t__) ;
 int usb_bulk_msg (int ,unsigned int,void*,unsigned int,int*,int ) ;
 unsigned int usb_sndbulkpipe (int ,int ) ;

int pvr2_upload_firmware2(struct pvr2_hdw *hdw)
{
 const struct firmware *fw_entry = ((void*)0);
 void *fw_ptr;
 unsigned int pipe, fw_len, fw_done, bcnt, icnt;
 int actual_length;
 int ret = 0;
 int fwidx;
 static const char *fw_files[] = {
  128,
 };

 if (hdw->hdw_desc->flag_skip_cx23416_firmware) {
  return 0;
 }

 trace_firmware("pvr2_upload_firmware2");

 ret = pvr2_locate_firmware(hdw,&fw_entry,"encoder",
       ARRAY_SIZE(fw_files), fw_files);
 if (ret < 0) return ret;
 fwidx = ret;
 ret = 0;



 hdw->enc_cur_valid = 0;



 del_timer_sync(&hdw->encoder_run_timer);
 if (hdw->state_encoder_runok) {
  hdw->state_encoder_runok = 0;
  trace_stbit("state_encoder_runok",hdw->state_encoder_runok);
 }


 ret |= pvr2_write_register(hdw, 0x0048, 0xffffffff);
 ret |= pvr2_hdw_gpio_chg_dir(hdw,0xffffffff,0x00000088);
 ret |= pvr2_hdw_gpio_chg_out(hdw,0xffffffff,0x00000008);
 ret |= pvr2_hdw_cmd_deep_reset(hdw);
 ret |= pvr2_write_register(hdw, 0xa064, 0x00000000);
 ret |= pvr2_hdw_gpio_chg_dir(hdw,0xffffffff,0x00000408);
 ret |= pvr2_hdw_gpio_chg_out(hdw,0xffffffff,0x00000008);
 ret |= pvr2_write_register(hdw, 0x9058, 0xffffffed);
 ret |= pvr2_write_register(hdw, 0x9054, 0xfffffffd);
 ret |= pvr2_write_register(hdw, 0x07f8, 0x80000800);
 ret |= pvr2_write_register(hdw, 0x07fc, 0x0000001a);
 ret |= pvr2_write_register(hdw, 0x0700, 0x00000000);
 ret |= pvr2_write_register(hdw, 0xaa00, 0x00000000);
 ret |= pvr2_write_register(hdw, 0xaa04, 0x00057810);
 ret |= pvr2_write_register(hdw, 0xaa10, 0x00148500);
 ret |= pvr2_write_register(hdw, 0xaa18, 0x00840000);
 ret |= pvr2_issue_simple_cmd(hdw,FX2CMD_FWPOST1);
 ret |= pvr2_issue_simple_cmd(hdw,FX2CMD_MEMSEL | (1 << 8) | (0 << 16));

 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "firmware2 upload prep failed, ret=%d",ret);
  release_firmware(fw_entry);
  goto done;
 }



 fw_len = fw_entry->size;

 if (fw_len % sizeof(u32)) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "size of %s firmware"
      " must be a multiple of %zu bytes",
      fw_files[fwidx],sizeof(u32));
  release_firmware(fw_entry);
  ret = -EINVAL;
  goto done;
 }

 fw_ptr = kmalloc(FIRMWARE_CHUNK_SIZE, GFP_KERNEL);
 if (fw_ptr == ((void*)0)){
  release_firmware(fw_entry);
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "failed to allocate memory for firmware2 upload");
  ret = -ENOMEM;
  goto done;
 }

 pipe = usb_sndbulkpipe(hdw->usb_dev, PVR2_FIRMWARE_ENDPOINT);

 fw_done = 0;
 for (fw_done = 0; fw_done < fw_len;) {
  bcnt = fw_len - fw_done;
  if (bcnt > FIRMWARE_CHUNK_SIZE) bcnt = FIRMWARE_CHUNK_SIZE;
  memcpy(fw_ptr, fw_entry->data + fw_done, bcnt);
  for (icnt = 0; icnt < bcnt/4 ; icnt++)
   ((u32 *)fw_ptr)[icnt] = swab32(((u32 *)fw_ptr)[icnt]);

  ret |= usb_bulk_msg(hdw->usb_dev, pipe, fw_ptr,bcnt,
        &actual_length, HZ);
  ret |= (actual_length != bcnt);
  if (ret) break;
  fw_done += bcnt;
 }

 trace_firmware("upload of %s : %i / %i ",
         fw_files[fwidx],fw_done,fw_len);

 kfree(fw_ptr);
 release_firmware(fw_entry);

 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "firmware2 upload transfer failure");
  goto done;
 }



 ret |= pvr2_write_register(hdw, 0x9054, 0xffffffff);
 ret |= pvr2_write_register(hdw, 0x9058, 0xffffffe8);
 ret |= pvr2_issue_simple_cmd(hdw,FX2CMD_MEMSEL | (1 << 8) | (0 << 16));

 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "firmware2 upload post-proc failure");
 }

 done:
 if (hdw->hdw_desc->signal_routing_scheme ==
     PVR2_ROUTING_SCHEME_GOTVIEW) {


  pvr2_hdw_gpio_chg_dir(hdw,(1 << 11),~0);
 }
 return ret;
}
