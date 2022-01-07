
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int pt1_i2c_write_bit (struct pt1*,int,int*,int) ;

__attribute__((used)) static void pt1_i2c_write_byte(struct pt1 *pt1, int addr, int *addrp, int data)
{
 int i;
 for (i = 0; i < 8; i++)
  pt1_i2c_write_bit(pt1, addr, &addr, data >> (7 - i) & 1);
 pt1_i2c_write_bit(pt1, addr, &addr, 1);
 *addrp = addr;
}
