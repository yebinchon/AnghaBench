
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int pt1_i2c_emit (struct pt1*,int,int,int,int,int,int) ;

__attribute__((used)) static void pt1_i2c_read_bit(struct pt1 *pt1, int addr, int *addrp)
{
 pt1_i2c_emit(pt1, addr, 1, 0, 0, 1, addr + 1);
 pt1_i2c_emit(pt1, addr + 1, 1, 0, 1, 1, addr + 2);
 pt1_i2c_emit(pt1, addr + 2, 1, 1, 1, 1, addr + 3);
 pt1_i2c_emit(pt1, addr + 3, 1, 0, 0, 1, addr + 4);
 *addrp = addr + 4;
}
