
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lv1_set_dabr (unsigned long,int) ;

__attribute__((used)) static int ps3_set_dabr(unsigned long dabr)
{
 enum {DABR_USER = 1, DABR_KERNEL = 2,};

 return lv1_set_dabr(dabr, DABR_KERNEL | DABR_USER) ? -1 : 0;
}
