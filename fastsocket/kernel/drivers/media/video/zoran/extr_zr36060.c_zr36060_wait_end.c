
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36060 {int status; int name; } ;


 int ZR060_CFSR_Busy ;
 int dprintk (int,char*,int ,int ) ;
 int udelay (int) ;
 int zr36060_read_status (struct zr36060*) ;

__attribute__((used)) static void
zr36060_wait_end (struct zr36060 *ptr)
{
 int i = 0;

 while (zr36060_read_status(ptr) & ZR060_CFSR_Busy) {
  udelay(1);
  if (i++ > 200000) {
   dprintk(1,
    "%s: timeout at wait_end (last status: 0x%02x)\n",
    ptr->name, ptr->status);
   break;
  }
 }
}
