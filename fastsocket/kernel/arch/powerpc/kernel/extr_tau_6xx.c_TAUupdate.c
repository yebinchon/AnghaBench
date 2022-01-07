
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int low; int high; int grew; } ;


 int SPRN_THRM1 ;
 int SPRN_THRM2 ;
 unsigned int THRM1_TIN ;
 unsigned int THRM1_TIV ;
 unsigned int mfspr (int ) ;
 int printk (char*,...) ;
 int set_thresholds (int) ;
 int step_size ;
 TYPE_1__* tau ;
 int window_expand ;

void TAUupdate(int cpu)
{
 unsigned thrm;







 if((thrm = mfspr(SPRN_THRM1)) & THRM1_TIV){
  if(thrm & THRM1_TIN){
   if (tau[cpu].low >= step_size){
    tau[cpu].low -= step_size;
    tau[cpu].high -= (step_size - window_expand);
   }
   tau[cpu].grew = 1;



  }
 }
 if((thrm = mfspr(SPRN_THRM2)) & THRM1_TIV){
  if(thrm & THRM1_TIN){
   if (tau[cpu].high <= 127-step_size){
    tau[cpu].low += (step_size - window_expand);
    tau[cpu].high += step_size;
   }
   tau[cpu].grew = 1;



  }
 }






 set_thresholds(cpu);


}
