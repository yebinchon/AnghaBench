
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int compress_inited; } ;


 int EIO ;
 int err (char*) ;
 scalar_t__ ov518_upload_quan_tables (struct usb_ov511*) ;

__attribute__((used)) static int
ov518_init_compression(struct usb_ov511 *ov)
{
 int rc = 0;

 if (!ov->compress_inited) {
  if (ov518_upload_quan_tables(ov) < 0) {
   err("Error uploading quantization tables");
   rc = -EIO;
   goto out;
  }
 }

 ov->compress_inited = 1;
out:
 return rc;
}
