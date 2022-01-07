
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tlbsize; } ;
struct TYPE_3__ {int tlbsize; } ;


 int MAX_SMTC_ASIDS ;
 int MAX_SMTC_TLBS ;
 int MIPS_CONF_MT ;
 unsigned long MVPCONF0_PTLBE ;
 unsigned long MVPCONF0_PTLBE_SHIFT ;
 unsigned long MVPCONF0_PVPE ;
 unsigned long MVPCONF0_PVPE_SHIFT ;
 unsigned long MVPCONF0_TLBS ;
 int MVPCONTROL_STLB ;
 int MVPCONTROL_VPC ;
 int SMTC_TLB_SHARED ;
 int TCHALT_H ;
 TYPE_2__* cpu_data ;
 TYPE_1__ current_cpu_data ;
 int ehb () ;
 int local_flush_tlb_all () ;
 int mips_ihb () ;
 int nostlb ;
 int printk (char*,...) ;
 unsigned long read_c0_mvpconf0 () ;
 int read_c0_mvpcontrol () ;
 int read_vpe_c0_config () ;
 unsigned long read_vpe_c0_config1 () ;
 int settc (int) ;
 scalar_t__** smtc_live_asid ;
 int smtc_status ;
 int write_c0_mvpcontrol (int) ;
 int write_tc_c0_tcbind (int) ;
 int write_tc_c0_tchalt (int ) ;

__attribute__((used)) static void smtc_configure_tlb(void)
{
 int i, tlbsiz, vpes;
 unsigned long mvpconf0;
 unsigned long config1val;


 for (vpes=0; vpes<MAX_SMTC_TLBS; vpes++) {
     for(i = 0; i < MAX_SMTC_ASIDS; i++) {
  smtc_live_asid[vpes][i] = 0;
     }
 }
 mvpconf0 = read_c0_mvpconf0();

 if ((vpes = ((mvpconf0 & MVPCONF0_PVPE)
   >> MVPCONF0_PVPE_SHIFT) + 1) > 1) {

     if ((mvpconf0 & MVPCONF0_TLBS) && !nostlb) {






  if ((tlbsiz = ((mvpconf0 & MVPCONF0_PTLBE)
    >> MVPCONF0_PTLBE_SHIFT)) == 0) {






      settc(1);

      write_tc_c0_tchalt(TCHALT_H);
      mips_ihb();

      for (i=0; i < vpes; i++) {
       write_tc_c0_tcbind(i);





   write_c0_mvpcontrol(
    read_c0_mvpcontrol() & ~ MVPCONTROL_VPC );
   mips_ihb();



   if (((read_vpe_c0_config() & MIPS_CONF_MT) >> 7) == 1) {
    config1val = read_vpe_c0_config1();
    tlbsiz += ((config1val >> 25) & 0x3f) + 1;
   }


   write_c0_mvpcontrol(
    read_c0_mvpcontrol() | MVPCONTROL_VPC );
   mips_ihb();
      }
  }
  write_c0_mvpcontrol(read_c0_mvpcontrol() | MVPCONTROL_STLB);
  ehb();
  if (tlbsiz > 64)
   tlbsiz = 64;
  cpu_data[0].tlbsize = current_cpu_data.tlbsize = tlbsiz;
  smtc_status |= SMTC_TLB_SHARED;
  local_flush_tlb_all();

  printk("TLB of %d entry pairs shared by %d VPEs\n",
   tlbsiz, vpes);
     } else {
  printk("WARNING: TLB Not Sharable on SMTC Boot!\n");
     }
 }
}
