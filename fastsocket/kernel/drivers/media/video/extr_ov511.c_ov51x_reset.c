
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; } ;


 scalar_t__ BCL_OV518 ;
 int PDEBUG (int,char*,unsigned char) ;
 int R51x_SYS_RESET ;
 int err (char*) ;
 int reg_w (struct usb_ov511*,int ,unsigned char) ;

__attribute__((used)) static int
ov51x_reset(struct usb_ov511 *ov, unsigned char reset_type)
{
 int rc;


 if (ov->bclass == BCL_OV518)
  reset_type &= 0xfe;

 PDEBUG(4, "Reset: type=0x%02X", reset_type);

 rc = reg_w(ov, R51x_SYS_RESET, reset_type);
 rc = reg_w(ov, R51x_SYS_RESET, 0);

 if (rc < 0)
  err("reset: command failed");

 return rc;
}
