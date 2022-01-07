
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;


 unsigned long BBR_CPU ;
 unsigned long BBR_INST ;
 unsigned long BBR_READ ;
 unsigned long BRCR_PCBA ;
 unsigned long BRCR_PCTE ;
 scalar_t__ CPU_SH7203 ;
 scalar_t__ CPU_SH7710 ;
 scalar_t__ CPU_SH7712 ;
 scalar_t__ CPU_SH7729 ;
 int UBC_BAMRA ;
 int UBC_BARA ;
 int UBC_BASRA ;
 int UBC_BBRA ;
 int UBC_BRCR ;
 int UBC_CAMR0 ;
 int UBC_CAR0 ;
 int UBC_CBCR ;
 int UBC_CBR0 ;
 unsigned long UBC_CBR_AIE ;
 unsigned long UBC_CBR_AIV_SET (int) ;
 unsigned long UBC_CBR_CE ;
 unsigned long UBC_CBR_ID_INST ;
 unsigned long UBC_CBR_RW_READ ;
 int UBC_CRR0 ;
 unsigned long UBC_CRR_BIE ;
 unsigned long UBC_CRR_PCB ;
 unsigned long UBC_CRR_RES ;
 unsigned long ctrl_inl (int ) ;
 int ctrl_outb (int,int ) ;
 int ctrl_outl (unsigned long,int ) ;
 int ctrl_outw (unsigned long,int ) ;
 TYPE_1__ current_cpu_data ;

__attribute__((used)) static void ubc_set_tracing(int asid, unsigned long pc)
{
 ctrl_outl(pc, UBC_BARA);





 ctrl_outl(0, UBC_BAMRA);

 if (current_cpu_data.type == CPU_SH7729 ||
     current_cpu_data.type == CPU_SH7710 ||
     current_cpu_data.type == CPU_SH7712 ||
     current_cpu_data.type == CPU_SH7203){
  ctrl_outw(BBR_INST | BBR_READ | BBR_CPU, UBC_BBRA);
  ctrl_outl(BRCR_PCBA | BRCR_PCTE, UBC_BRCR);
 } else {
  ctrl_outw(BBR_INST | BBR_READ, UBC_BBRA);
  ctrl_outw(BRCR_PCBA, UBC_BRCR);
 }

}
