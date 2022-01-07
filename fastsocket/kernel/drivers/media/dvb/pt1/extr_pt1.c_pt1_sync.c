
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int EIO ;
 int KERN_ERR ;
 int pt1_printk (int ,struct pt1*,char*) ;
 int pt1_read_reg (struct pt1*,int ) ;
 int pt1_write_reg (struct pt1*,int ,int) ;

__attribute__((used)) static int pt1_sync(struct pt1 *pt1)
{
 int i;
 for (i = 0; i < 57; i++) {
  if (pt1_read_reg(pt1, 0) & 0x20000000)
   return 0;
  pt1_write_reg(pt1, 0, 0x00000008);
 }
 pt1_printk(KERN_ERR, pt1, "could not sync\n");
 return -EIO;
}
