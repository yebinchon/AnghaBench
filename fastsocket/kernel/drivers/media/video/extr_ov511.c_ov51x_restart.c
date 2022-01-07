
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; scalar_t__ stopped; } ;


 scalar_t__ BCL_OV518 ;
 int PDEBUG (int,char*) ;
 int R51x_SYS_RESET ;
 int reg_w (struct usb_ov511*,int,int) ;

__attribute__((used)) static inline int
ov51x_restart(struct usb_ov511 *ov)
{
 if (ov->stopped) {
  PDEBUG(4, "restarting");
  ov->stopped = 0;


  if (ov->bclass == BCL_OV518)
   reg_w(ov, 0x2f, 0x80);

  return (reg_w(ov, R51x_SYS_RESET, 0x00));
 }

 return 0;
}
