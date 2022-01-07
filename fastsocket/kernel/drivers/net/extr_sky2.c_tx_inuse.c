
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int tx_prod; int tx_cons; int tx_ring_size; } ;



__attribute__((used)) static inline int tx_inuse(const struct sky2_port *sky2)
{
 return (sky2->tx_prod - sky2->tx_cons) & (sky2->tx_ring_size - 1);
}
