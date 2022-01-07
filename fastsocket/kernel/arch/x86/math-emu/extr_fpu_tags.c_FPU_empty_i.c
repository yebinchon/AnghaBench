
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAG_Empty ;
 int fpu_tag_word ;
 int top ;

int FPU_empty_i(int stnr)
{
 int regnr = (top + stnr) & 7;

 return ((fpu_tag_word >> (regnr * 2)) & 3) == TAG_Empty;
}
