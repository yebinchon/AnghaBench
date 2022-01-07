
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int eeh_config_addr; int eeh_pe_config_addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int buid; } ;


 int BUID_HI (int ) ;
 int BUID_LO (int ) ;
 int ERR_TYPE_RTAS_LOG ;
 int eeh_error_buf_size ;
 int ibm_slot_error_detail ;
 int log_error (char*,int ,int ) ;
 int memset (char*,int ,int ) ;
 int rtas_call (int ,int,int,int *,int,int ,int ,int ,size_t,int ,int ,int) ;
 char* slot_errbuf ;
 int slot_errbuf_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_to_phys (char*) ;

__attribute__((used)) static void rtas_slot_error_detail(struct pci_dn *pdn, int severity,
                                   char *driver_log, size_t loglen)
{
 int config_addr;
 unsigned long flags;
 int rc;


 spin_lock_irqsave(&slot_errbuf_lock, flags);
 memset(slot_errbuf, 0, eeh_error_buf_size);


 config_addr = pdn->eeh_config_addr;
 if (pdn->eeh_pe_config_addr)
  config_addr = pdn->eeh_pe_config_addr;

 rc = rtas_call(ibm_slot_error_detail,
                8, 1, ((void*)0), config_addr,
                BUID_HI(pdn->phb->buid),
                BUID_LO(pdn->phb->buid),
                virt_to_phys(driver_log), loglen,
                virt_to_phys(slot_errbuf),
                eeh_error_buf_size,
                severity);

 if (rc == 0)
  log_error(slot_errbuf, ERR_TYPE_RTAS_LOG, 0);
 spin_unlock_irqrestore(&slot_errbuf_lock, flags);
}
