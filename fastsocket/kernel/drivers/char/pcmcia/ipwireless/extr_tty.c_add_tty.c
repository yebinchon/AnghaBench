
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ipw_tty {int dummy; } ;
struct ipw_network {int dummy; } ;
struct ipw_hardware {int dummy; } ;
struct TYPE_10__ {scalar_t__ minor; int major; int dev_name; } ;
typedef TYPE_1__ dev_node_t ;
struct TYPE_12__ {scalar_t__ minor_start; int major; } ;
struct TYPE_11__ {int index; int channel_idx; int secondary_channel_idx; int tty_type; int ipw_tty_mutex; struct ipw_network* network; struct ipw_hardware* hardware; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* get_tty (scalar_t__) ;
 TYPE_3__* ipw_tty_driver ;
 int ipwireless_associate_network_tty (struct ipw_network*,int,TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int report_registering (TYPE_2__*) ;
 int sprintf (int ,char*,int) ;
 int tty_register_device (TYPE_3__*,int,int *) ;
 TYPE_2__** ttys ;

__attribute__((used)) static int add_tty(dev_node_t *nodesp, int j,
      struct ipw_hardware *hardware,
      struct ipw_network *network, int channel_idx,
      int secondary_channel_idx, int tty_type)
{
 ttys[j] = kzalloc(sizeof(struct ipw_tty), GFP_KERNEL);
 if (!ttys[j])
  return -ENOMEM;
 ttys[j]->index = j;
 ttys[j]->hardware = hardware;
 ttys[j]->channel_idx = channel_idx;
 ttys[j]->secondary_channel_idx = secondary_channel_idx;
 ttys[j]->network = network;
 ttys[j]->tty_type = tty_type;
 mutex_init(&ttys[j]->ipw_tty_mutex);

 tty_register_device(ipw_tty_driver, j, ((void*)0));
 ipwireless_associate_network_tty(network, channel_idx, ttys[j]);

 if (secondary_channel_idx != -1)
  ipwireless_associate_network_tty(network,
       secondary_channel_idx,
       ttys[j]);
 if (nodesp != ((void*)0)) {
  sprintf(nodesp->dev_name, "ttyIPWp%d", j);
  nodesp->major = ipw_tty_driver->major;
  nodesp->minor = j + ipw_tty_driver->minor_start;
 }
 if (get_tty(j + ipw_tty_driver->minor_start) == ttys[j])
  report_registering(ttys[j]);
 return 0;
}
