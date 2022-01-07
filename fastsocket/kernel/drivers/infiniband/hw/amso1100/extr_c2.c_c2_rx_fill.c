
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_ring {struct c2_element* start; struct c2_element* to_clean; } ;
struct c2_port {struct c2_ring rx_ring; } ;
struct c2_element {struct c2_element* next; } ;


 scalar_t__ c2_rx_alloc (struct c2_port*,struct c2_element*) ;

__attribute__((used)) static int c2_rx_fill(struct c2_port *c2_port)
{
 struct c2_ring *rx_ring = &c2_port->rx_ring;
 struct c2_element *elem;
 int ret = 0;

 elem = rx_ring->start;
 do {
  if (c2_rx_alloc(c2_port, elem)) {
   ret = 1;
   break;
  }
 } while ((elem = elem->next) != rx_ring->start);

 rx_ring->to_clean = rx_ring->start;
 return ret;
}
