
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {int (* read ) (struct lis3lv02d*,int,int*) ;} ;
typedef int s16 ;


 int stub1 (struct lis3lv02d*,int,int*) ;
 int stub2 (struct lis3lv02d*,int,int*) ;

__attribute__((used)) static s16 lis3lv02d_read_16(struct lis3lv02d *lis3, int reg)
{
 u8 lo, hi;

 lis3->read(lis3, reg - 1, &lo);
 lis3->read(lis3, reg, &hi);

 return (s16)((hi << 8) | lo);
}
