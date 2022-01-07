
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int EIO ;
 int HZ ;
 int KERN_ERR ;
 int pt1_printk (int ,struct pt1*,char*) ;
 int pt1_read_reg (struct pt1*,int ) ;
 int pt1_write_reg (struct pt1*,int ,int) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int pt1_reset_ram(struct pt1 *pt1)
{
 int i;
 pt1_write_reg(pt1, 0, 0x02020000);
 pt1_write_reg(pt1, 0, 0x02000000);
 for (i = 0; i < 10; i++) {
  if (pt1_read_reg(pt1, 0) & 0x00000002)
   return 0;
  schedule_timeout_uninterruptible((HZ + 999) / 1000);
 }
 pt1_printk(KERN_ERR, pt1, "could not reset RAM\n");
 return -EIO;
}
