
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msix_entry {int vector; } ;
struct TYPE_6__ {int ring; } ;
struct TYPE_5__ {int ring; } ;
struct ixgbe_q_vector {int flags; int num_q_vectors; struct msix_entry* msix_entries; TYPE_3__ tx; TYPE_2__ rx; struct ixgbe_q_vector** q_vector; TYPE_1__* pdev; } ;
struct ixgbe_adapter {int flags; int num_q_vectors; struct msix_entry* msix_entries; TYPE_3__ tx; TYPE_2__ rx; struct ixgbe_adapter** q_vector; TYPE_1__* pdev; } ;
struct TYPE_4__ {int irq; } ;


 int IXGBE_FLAG_MSIX_ENABLED ;
 int free_irq (int ,struct ixgbe_q_vector*) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void ixgbe_free_irq(struct ixgbe_adapter *adapter)
{
 int vector;

 if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {
  free_irq(adapter->pdev->irq, adapter);
  return;
 }

 for (vector = 0; vector < adapter->num_q_vectors; vector++) {
  struct ixgbe_q_vector *q_vector = adapter->q_vector[vector];
  struct msix_entry *entry = &adapter->msix_entries[vector];


  if (!q_vector->rx.ring && !q_vector->tx.ring)
   continue;


  irq_set_affinity_hint(entry->vector, ((void*)0));

  free_irq(entry->vector, q_vector);
 }

 free_irq(adapter->msix_entries[vector++].vector, adapter);
}
