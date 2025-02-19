
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct isci_host {int * io_request_sequence; } ;


 size_t ISCI_TAG (int ,size_t) ;
 size_t SCI_CONTROLLER_INVALID_IO_TAG ;
 size_t isci_tci_alloc (struct isci_host*) ;
 scalar_t__ isci_tci_space (struct isci_host*) ;

u16 isci_alloc_tag(struct isci_host *ihost)
{
 if (isci_tci_space(ihost)) {
  u16 tci = isci_tci_alloc(ihost);
  u8 seq = ihost->io_request_sequence[tci];

  return ISCI_TAG(seq, tci);
 }

 return SCI_CONTROLLER_INVALID_IO_TAG;
}
