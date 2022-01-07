
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; } ;


 scalar_t__ BCL_OV511 ;
 scalar_t__ BCL_OV518 ;
 int ENOSYS ;
 int err (char*) ;

__attribute__((used)) static int
request_decompressor(struct usb_ov511 *ov)
{
 if (ov->bclass == BCL_OV511 || ov->bclass == BCL_OV518) {
  err("No decompressor available");
 } else {
  err("Unknown bridge");
 }

 return -ENOSYS;
}
