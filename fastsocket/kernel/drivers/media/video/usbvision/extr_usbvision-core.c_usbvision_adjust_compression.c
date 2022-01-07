
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int used_bandwidth; int compr_level; int last_compr_level; scalar_t__ bridge_type; } ;


 scalar_t__ BRIDGE_NT1004 ;
 scalar_t__ BRIDGE_NT1005 ;
 int DBG_IRQ ;
 int PDEBUG (int ,char*,...) ;
 int RESTRICT_TO_RANGE (int,int ,int) ;
 int USBVISION_PCM_THR1 ;
 scalar_t__ adjust_compression ;
 int usbvision_write_reg_irq (struct usb_usbvision*,int ,unsigned char*,int) ;

__attribute__((used)) static int usbvision_adjust_compression(struct usb_usbvision *usbvision)
{
 int err_code = 0;
 unsigned char buffer[6];

 PDEBUG(DBG_IRQ, "");
 if ((adjust_compression) && (usbvision->used_bandwidth > 0)) {
  usbvision->compr_level += (usbvision->used_bandwidth - 90) / 2;
  RESTRICT_TO_RANGE(usbvision->compr_level, 0, 100);
  if (usbvision->compr_level != usbvision->last_compr_level) {
   int distortion;

   if (usbvision->bridge_type == BRIDGE_NT1004 || usbvision->bridge_type == BRIDGE_NT1005) {
    buffer[0] = (unsigned char)(4 + 16 * usbvision->compr_level / 100);
    buffer[1] = (unsigned char)(4 + 8 * usbvision->compr_level / 100);
    distortion = 7 + 248 * usbvision->compr_level / 100;
    buffer[2] = (unsigned char)(distortion & 0xFF);
    buffer[3] = (unsigned char)(distortion & 0xFF);
    distortion = 1 + 42 * usbvision->compr_level / 100;
    buffer[4] = (unsigned char)(distortion & 0xFF);
    buffer[5] = (unsigned char)(distortion & 0xFF);
   } else {
    buffer[0] = (unsigned char)(4 + 16 * usbvision->compr_level / 100);
    buffer[1] = (unsigned char)(4 + 8 * usbvision->compr_level / 100);
    distortion = 2 + 253 * usbvision->compr_level / 100;
    buffer[2] = (unsigned char)(distortion & 0xFF);
    buffer[3] = 0;
    distortion = 0 + 43 * usbvision->compr_level / 100;
    buffer[4] = (unsigned char)(distortion & 0xFF);
    buffer[5] = 0;
   }
   err_code = usbvision_write_reg_irq(usbvision, USBVISION_PCM_THR1, buffer, 6);
   if (err_code == 0) {
    PDEBUG(DBG_IRQ, "new compr params %#02x %#02x %#02x %#02x %#02x %#02x", buffer[0],
        buffer[1], buffer[2], buffer[3], buffer[4], buffer[5]);
    usbvision->last_compr_level = usbvision->compr_level;
   }
  }
 }
 return err_code;
}
