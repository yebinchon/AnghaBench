
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isci_host {int tci_tail; int tci_head; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 int SCI_MAX_IO_REQUESTS ;

__attribute__((used)) static u16 isci_tci_space(struct isci_host *ihost)
{
 return CIRC_SPACE(ihost->tci_head, ihost->tci_tail, SCI_MAX_IO_REQUESTS);
}
