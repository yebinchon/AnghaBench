
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36050 {int status1; int name; } ;


 int dprintk (int,char*,int ,int ) ;
 int udelay (int) ;
 int zr36050_read_status1 (struct zr36050*) ;

__attribute__((used)) static void
zr36050_wait_end (struct zr36050 *ptr)
{
 int i = 0;

 while (!(zr36050_read_status1(ptr) & 0x4)) {
  udelay(1);
  if (i++ > 200000) {
   dprintk(1,
    "%s: timeout at wait_end (last status: 0x%02x)\n",
    ptr->name, ptr->status1);
   break;
  }
 }
}
