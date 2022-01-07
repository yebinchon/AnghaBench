
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_port {struct gelic_card* card; } ;
struct gelic_card {int dummy; } ;



__attribute__((used)) static inline struct gelic_card *port_to_card(struct gelic_port *p)
{
 return p->card;
}
