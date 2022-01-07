
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int pt1_write_reg (struct pt1*,int,int) ;

__attribute__((used)) static void pt1_i2c_emit(struct pt1 *pt1, int addr, int busy, int read_enable,
    int clock, int data, int next_addr)
{
 pt1_write_reg(pt1, 4, addr << 18 | busy << 13 | read_enable << 12 |
        !clock << 11 | !data << 10 | next_addr);
}
