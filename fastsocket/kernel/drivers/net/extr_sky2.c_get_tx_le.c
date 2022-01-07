
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_tx_le {scalar_t__ ctrl; } ;
struct sky2_port {int tx_ring_size; struct sky2_tx_le* tx_le; } ;


 int RING_NEXT (int,int ) ;

__attribute__((used)) static inline struct sky2_tx_le *get_tx_le(struct sky2_port *sky2, u16 *slot)
{
 struct sky2_tx_le *le = sky2->tx_le + *slot;

 *slot = RING_NEXT(*slot, sky2->tx_ring_size);
 le->ctrl = 0;
 return le;
}
