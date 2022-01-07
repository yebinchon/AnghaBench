
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_uncore_box {int dummy; } ;


 int SNBEP_PMON_BOX_CTL_FRZ ;
 int rdmsrl (unsigned int,int ) ;
 unsigned int uncore_msr_box_ctl (struct intel_uncore_box*) ;
 int wrmsrl (unsigned int,int ) ;

__attribute__((used)) static void snbep_uncore_msr_disable_box(struct intel_uncore_box *box)
{
 u64 config;
 unsigned msr;

 msr = uncore_msr_box_ctl(box);
 if (msr) {
  rdmsrl(msr, config);
  config |= SNBEP_PMON_BOX_CTL_FRZ;
  wrmsrl(msr, config);
 }
}
