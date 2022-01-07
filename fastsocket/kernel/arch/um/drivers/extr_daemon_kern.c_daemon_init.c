
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {scalar_t__ user; } ;
struct net_device {int dummy; } ;
struct daemon_init {int ctl_sock; int sock_type; } ;
struct daemon_data {int fd; int control; int ctl_sock; int sock_type; int * local_addr; int * data_addr; int * ctl_addr; struct net_device* dev; } ;


 int SWITCH_VERSION ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;

__attribute__((used)) static void daemon_init(struct net_device *dev, void *data)
{
 struct uml_net_private *pri;
 struct daemon_data *dpri;
 struct daemon_init *init = data;

 pri = netdev_priv(dev);
 dpri = (struct daemon_data *) pri->user;
 dpri->sock_type = init->sock_type;
 dpri->ctl_sock = init->ctl_sock;
 dpri->fd = -1;
 dpri->control = -1;
 dpri->dev = dev;

 dpri->ctl_addr = ((void*)0);
 dpri->data_addr = ((void*)0);
 dpri->local_addr = ((void*)0);

 printk("daemon backend (uml_switch version %d) - %s:%s",
        SWITCH_VERSION, dpri->sock_type, dpri->ctl_sock);
 printk("\n");
}
