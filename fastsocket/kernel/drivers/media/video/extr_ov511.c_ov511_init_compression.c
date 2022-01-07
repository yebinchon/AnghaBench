
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int compress_inited; } ;


 int EIO ;
 int err (char*) ;
 scalar_t__ ov511_upload_quan_tables (struct usb_ov511*) ;
 int phuv ;
 int phy ;
 int pvuv ;
 int pvy ;
 int qhuv ;
 int qhy ;
 int qvuv ;
 int qvy ;
 int reg_w (struct usb_ov511*,int,int ) ;

__attribute__((used)) static int
ov511_init_compression(struct usb_ov511 *ov)
{
 int rc = 0;

 if (!ov->compress_inited) {
  reg_w(ov, 0x70, phy);
  reg_w(ov, 0x71, phuv);
  reg_w(ov, 0x72, pvy);
  reg_w(ov, 0x73, pvuv);
  reg_w(ov, 0x74, qhy);
  reg_w(ov, 0x75, qhuv);
  reg_w(ov, 0x76, qvy);
  reg_w(ov, 0x77, qvuv);

  if (ov511_upload_quan_tables(ov) < 0) {
   err("Error uploading quantization tables");
   rc = -EIO;
   goto out;
  }
 }

 ov->compress_inited = 1;
out:
 return rc;
}
