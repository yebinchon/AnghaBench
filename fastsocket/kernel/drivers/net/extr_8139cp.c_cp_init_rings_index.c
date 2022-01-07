
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; } ;



__attribute__((used)) static void cp_init_rings_index (struct cp_private *cp)
{
 cp->rx_tail = 0;
 cp->tx_head = cp->tx_tail = 0;
}
