
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_tag_word ;
 int top ;

int FPU_gettagi(int stnr)
{
 return (fpu_tag_word >> (((top + stnr) & 7) * 2)) & 3;
}
