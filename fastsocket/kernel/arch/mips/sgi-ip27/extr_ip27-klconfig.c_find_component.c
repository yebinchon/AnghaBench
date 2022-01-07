
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lboard_t ;
typedef int klinfo_t ;


 int * KLCF_COMP (int *,int) ;
 unsigned char KLCF_COMP_TYPE (int *) ;
 int KLCF_NUM_COMPS (int *) ;
 int printk (char*,int *) ;

klinfo_t *find_component(lboard_t *brd, klinfo_t *kli, unsigned char struct_type)
{
 int index, j;

 if (kli == (klinfo_t *)((void*)0)) {
  index = 0;
 } else {
  for (j = 0; j < KLCF_NUM_COMPS(brd); j++)
   if (kli == KLCF_COMP(brd, j))
    break;
  index = j;
  if (index == KLCF_NUM_COMPS(brd)) {
   printk("find_component: Bad pointer: 0x%p\n", kli);
   return (klinfo_t *)((void*)0);
  }
  index++;
 }

 for (; index < KLCF_NUM_COMPS(brd); index++) {
  kli = KLCF_COMP(brd, index);
  if (KLCF_COMP_TYPE(kli) == struct_type)
   return kli;
 }


 return (klinfo_t *)((void*)0);
}
