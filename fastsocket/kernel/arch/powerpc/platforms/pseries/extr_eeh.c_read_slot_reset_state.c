
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int eeh_config_addr; int eeh_pe_config_addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int buid; } ;


 int BUID_HI (int ) ;
 int BUID_LO (int ) ;
 int RTAS_UNKNOWN_SERVICE ;
 int ibm_read_slot_reset_state ;
 int ibm_read_slot_reset_state2 ;
 int rtas_call (int,int,int,int*,int,int ,int ) ;

__attribute__((used)) static int read_slot_reset_state(struct pci_dn *pdn, int rets[])
{
 int token, outputs;
 int config_addr;

 if (ibm_read_slot_reset_state2 != RTAS_UNKNOWN_SERVICE) {
  token = ibm_read_slot_reset_state2;
  outputs = 4;
 } else {
  token = ibm_read_slot_reset_state;
  rets[2] = 0;
  outputs = 3;
 }


 config_addr = pdn->eeh_config_addr;
 if (pdn->eeh_pe_config_addr)
  config_addr = pdn->eeh_pe_config_addr;

 return rtas_call(token, 3, outputs, rets, config_addr,
    BUID_HI(pdn->phb->buid), BUID_LO(pdn->phb->buid));
}
