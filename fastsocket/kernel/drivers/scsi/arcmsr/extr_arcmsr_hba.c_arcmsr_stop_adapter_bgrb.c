
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; } ;





 int arcmsr_stop_hba_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_stop_hbb_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_stop_hbc_bgrb (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_stop_adapter_bgrb(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 130: {
  arcmsr_stop_hba_bgrb(acb);
  }
  break;

 case 129: {
  arcmsr_stop_hbb_bgrb(acb);
  }
  break;
 case 128: {
  arcmsr_stop_hbc_bgrb(acb);
  }
 }
}
