
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct pvr2_hdw {int fw1_state; int usb_dev; TYPE_2__* hdw_desc; } ;
struct firmware {unsigned int size; scalar_t__ data; } ;
struct TYPE_3__ {int lst; int cnt; } ;
struct TYPE_4__ {scalar_t__ flag_fx2_16kb; TYPE_1__ fx2_firmware; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTTY ;
 int FW1_STATE_FAILED ;
 int FW1_STATE_MISSING ;
 int FW1_STATE_OK ;
 int FW1_STATE_RELOAD ;
 int GFP_KERNEL ;
 int HZ ;
 int PVR2_TRACE_ERROR_LEGS ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,scalar_t__,int) ;
 int pvr2_hdw_cpureset_assert (struct pvr2_hdw*,int) ;
 int pvr2_locate_firmware (struct pvr2_hdw*,struct firmware const**,char*,int ,int ) ;
 int pvr2_trace (int ,char*,...) ;
 int release_firmware (struct firmware const*) ;
 int trace_firmware (char*,...) ;
 int usb_clear_halt (int ,int ) ;
 scalar_t__ usb_control_msg (int ,unsigned int,int,int,unsigned int,int ,void*,int,int ) ;
 int usb_sndbulkpipe (int ,int) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int pvr2_upload_firmware1(struct pvr2_hdw *hdw)
{
 const struct firmware *fw_entry = ((void*)0);
 void *fw_ptr;
 unsigned int pipe;
 unsigned int fwsize;
 int ret;
 u16 address;

 if (!hdw->hdw_desc->fx2_firmware.cnt) {
  hdw->fw1_state = FW1_STATE_OK;
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Connected device type defines"
      " no firmware to upload; ignoring firmware");
  return -ENOTTY;
 }

 hdw->fw1_state = FW1_STATE_FAILED;

 trace_firmware("pvr2_upload_firmware1");

 ret = pvr2_locate_firmware(hdw,&fw_entry,"fx2 controller",
       hdw->hdw_desc->fx2_firmware.cnt,
       hdw->hdw_desc->fx2_firmware.lst);
 if (ret < 0) {
  if (ret == -ENOENT) hdw->fw1_state = FW1_STATE_MISSING;
  return ret;
 }

 usb_clear_halt(hdw->usb_dev, usb_sndbulkpipe(hdw->usb_dev, 0 & 0x7f));

 pipe = usb_sndctrlpipe(hdw->usb_dev, 0);
 fwsize = fw_entry->size;

 if ((fwsize != 0x2000) &&
     (!(hdw->hdw_desc->flag_fx2_16kb && (fwsize == 0x4000)))) {
  if (hdw->hdw_desc->flag_fx2_16kb) {
   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "Wrong fx2 firmware size"
       " (expected 8192 or 16384, got %u)",
       fwsize);
  } else {
   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "Wrong fx2 firmware size"
       " (expected 8192, got %u)",
       fwsize);
  }
  release_firmware(fw_entry);
  return -ENOMEM;
 }

 fw_ptr = kmalloc(0x800, GFP_KERNEL);
 if (fw_ptr == ((void*)0)){
  release_firmware(fw_entry);
  return -ENOMEM;
 }


 pvr2_hdw_cpureset_assert(hdw,1);




 ret = 0;
 for (address = 0; address < fwsize; address += 0x800) {
  memcpy(fw_ptr, fw_entry->data + address, 0x800);
  ret += usb_control_msg(hdw->usb_dev, pipe, 0xa0, 0x40, address,
           0, fw_ptr, 0x800, HZ);
 }

 trace_firmware("Upload done, releasing device's CPU");


 pvr2_hdw_cpureset_assert(hdw,0);

 kfree(fw_ptr);
 release_firmware(fw_entry);

 trace_firmware("Upload done (%d bytes sent)",ret);


 if (ret == fwsize) {
  hdw->fw1_state = FW1_STATE_RELOAD;
  return 0;
 }

 return -EIO;
}
