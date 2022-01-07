
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct op_msrs {int dummy; } ;
struct op_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ op_enabled; scalar_t__ fetch_enabled; } ;
struct TYPE_3__ {int ibs_op_ctl; scalar_t__ branch_target; int sample_size; } ;


 int IBS_FETCH_CNT ;
 int IBS_FETCH_CODE ;
 int IBS_FETCH_ENABLE ;
 int IBS_FETCH_SIZE ;
 int IBS_FETCH_VAL ;
 int IBS_OP_CODE ;
 int IBS_OP_VAL ;
 int MSR_AMD64_IBSBRTARGET ;
 int MSR_AMD64_IBSDCLINAD ;
 int MSR_AMD64_IBSDCPHYSAD ;
 int MSR_AMD64_IBSFETCHCTL ;
 int MSR_AMD64_IBSFETCHLINAD ;
 int MSR_AMD64_IBSFETCHPHYSAD ;
 int MSR_AMD64_IBSOPCTL ;
 int MSR_AMD64_IBSOPDATA ;
 int MSR_AMD64_IBSOPDATA2 ;
 int MSR_AMD64_IBSOPDATA3 ;
 int MSR_AMD64_IBSOPRIP ;
 int ibs_caps ;
 TYPE_2__ ibs_config ;
 TYPE_1__ ibs_state ;
 int op_amd_randomize_ibs_op (int ) ;
 int oprofile_add_data (struct op_entry*,unsigned long) ;
 int oprofile_add_data64 (struct op_entry*,int) ;
 int oprofile_write_commit (struct op_entry*) ;
 int oprofile_write_reserve (struct op_entry*,struct pt_regs* const,int,int ,int ) ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static inline void
op_amd_handle_ibs(struct pt_regs * const regs,
    struct op_msrs const * const msrs)
{
 u64 val, ctl;
 struct op_entry entry;

 if (!ibs_caps)
  return;

 if (ibs_config.fetch_enabled) {
  rdmsrl(MSR_AMD64_IBSFETCHCTL, ctl);
  if (ctl & IBS_FETCH_VAL) {
   rdmsrl(MSR_AMD64_IBSFETCHLINAD, val);
   oprofile_write_reserve(&entry, regs, val,
            IBS_FETCH_CODE, IBS_FETCH_SIZE);
   oprofile_add_data64(&entry, val);
   oprofile_add_data64(&entry, ctl);
   rdmsrl(MSR_AMD64_IBSFETCHPHYSAD, val);
   oprofile_add_data64(&entry, val);
   oprofile_write_commit(&entry);


   ctl &= ~(IBS_FETCH_VAL | IBS_FETCH_CNT);
   ctl |= IBS_FETCH_ENABLE;
   wrmsrl(MSR_AMD64_IBSFETCHCTL, ctl);
  }
 }

 if (ibs_config.op_enabled) {
  rdmsrl(MSR_AMD64_IBSOPCTL, ctl);
  if (ctl & IBS_OP_VAL) {
   rdmsrl(MSR_AMD64_IBSOPRIP, val);
   oprofile_write_reserve(&entry, regs, val, IBS_OP_CODE,
            ibs_state.sample_size);
   oprofile_add_data64(&entry, val);
   rdmsrl(MSR_AMD64_IBSOPDATA, val);
   oprofile_add_data64(&entry, val);
   rdmsrl(MSR_AMD64_IBSOPDATA2, val);
   oprofile_add_data64(&entry, val);
   rdmsrl(MSR_AMD64_IBSOPDATA3, val);
   oprofile_add_data64(&entry, val);
   rdmsrl(MSR_AMD64_IBSDCLINAD, val);
   oprofile_add_data64(&entry, val);
   rdmsrl(MSR_AMD64_IBSDCPHYSAD, val);
   oprofile_add_data64(&entry, val);
   if (ibs_state.branch_target) {
    rdmsrl(MSR_AMD64_IBSBRTARGET, val);
    oprofile_add_data(&entry, (unsigned long)val);
   }
   oprofile_write_commit(&entry);


   ctl = op_amd_randomize_ibs_op(ibs_state.ibs_op_ctl);
   wrmsrl(MSR_AMD64_IBSOPCTL, ctl);
  }
 }
}
