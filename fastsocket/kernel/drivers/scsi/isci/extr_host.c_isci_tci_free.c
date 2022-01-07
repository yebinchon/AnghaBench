
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct isci_host {int tci_tail; size_t* tci_pool; } ;


 int SCI_MAX_IO_REQUESTS ;

void isci_tci_free(struct isci_host *ihost, u16 tci)
{
 u16 tail = ihost->tci_tail & (SCI_MAX_IO_REQUESTS-1);

 ihost->tci_pool[tail] = tci;
 ihost->tci_tail = tail + 1;
}
