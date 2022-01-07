
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_tag_word ;
 int top ;

void FPU_settagi(int stnr, int tag)
{
 int regnr = stnr + top;
 regnr &= 7;
 fpu_tag_word &= ~(3 << (regnr * 2));
 fpu_tag_word |= (tag & 3) << (regnr * 2);
}
