
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int transMethod; int* blockFetchTable; int msix_vector; int nreply_queues; } ;
struct TYPE_2__ {size_t SGList; int ReplyQueue; } ;
struct CommandList {int busaddr; TYPE_1__ Header; } ;


 int CFGTBL_Trans_Performant ;
 scalar_t__ likely (int) ;
 int smp_processor_id () ;

__attribute__((used)) static void set_performant_mode(struct ctlr_info *h, struct CommandList *c)
{
 if (likely(h->transMethod & CFGTBL_Trans_Performant)) {
  c->busaddr |= 1 | (h->blockFetchTable[c->Header.SGList] << 1);
  if (likely(h->msix_vector))
   c->Header.ReplyQueue =
    smp_processor_id() % h->nreply_queues;
 }
}
