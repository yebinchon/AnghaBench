
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int EINTR ;
 int HZ ;
 int current ;
 int pt1_i2c_emit (struct pt1*,int,int,int ,int,int,int) ;
 int pt1_read_reg (struct pt1*,int ) ;
 int pt1_write_reg (struct pt1*,int ,int) ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int pt1_i2c_end(struct pt1 *pt1, int addr)
{
 pt1_i2c_emit(pt1, addr, 1, 0, 0, 0, addr + 1);
 pt1_i2c_emit(pt1, addr + 1, 1, 0, 1, 0, addr + 2);
 pt1_i2c_emit(pt1, addr + 2, 1, 0, 1, 1, 0);

 pt1_write_reg(pt1, 0, 0x00000004);
 do {
  if (signal_pending(current))
   return -EINTR;
  schedule_timeout_interruptible((HZ + 999) / 1000);
 } while (pt1_read_reg(pt1, 0) & 0x00000080);
 return 0;
}
