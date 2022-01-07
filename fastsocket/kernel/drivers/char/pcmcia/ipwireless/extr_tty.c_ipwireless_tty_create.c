
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ipw_tty {int dummy; } ;
struct ipw_network {int dummy; } ;
struct ipw_hardware {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ dev_node_t ;


 int IPWIRELESS_PCMCIA_MINORS ;
 int IPWIRELESS_PCMCIA_MINOR_RANGE ;
 int IPW_CHANNEL_DIALLER ;
 int IPW_CHANNEL_RAS ;
 int TTYTYPE_MODEM ;
 int TTYTYPE_MONITOR ;
 int TTYTYPE_RAS_RAW ;
 scalar_t__ add_tty (TYPE_1__*,int,struct ipw_hardware*,struct ipw_network*,int,int,int ) ;
 struct ipw_tty** ttys ;

struct ipw_tty *ipwireless_tty_create(struct ipw_hardware *hardware,
          struct ipw_network *network,
          dev_node_t *nodes)
{
 int i, j;

 for (i = 0; i < IPWIRELESS_PCMCIA_MINOR_RANGE; i++) {
  int allfree = 1;

  for (j = i; j < IPWIRELESS_PCMCIA_MINORS;
    j += IPWIRELESS_PCMCIA_MINOR_RANGE)
   if (ttys[j] != ((void*)0)) {
    allfree = 0;
    break;
   }

  if (allfree) {
   j = i;

   if (add_tty(&nodes[0], j, hardware, network,
     IPW_CHANNEL_DIALLER, IPW_CHANNEL_RAS,
     TTYTYPE_MODEM))
    return ((void*)0);

   j += IPWIRELESS_PCMCIA_MINOR_RANGE;
   if (add_tty(&nodes[1], j, hardware, network,
     IPW_CHANNEL_DIALLER, -1,
     TTYTYPE_MONITOR))
    return ((void*)0);

   j += IPWIRELESS_PCMCIA_MINOR_RANGE;
   if (add_tty(((void*)0), j, hardware, network,
     IPW_CHANNEL_RAS, -1,
     TTYTYPE_RAS_RAW))
    return ((void*)0);

   nodes[0].next = &nodes[1];
   nodes[1].next = ((void*)0);

   return ttys[i];
  }
 }
 return ((void*)0);
}
