
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {char* name; } ;
struct ifreq {int ifr_name; } ;
typedef int pc300dev_t ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int cpc_opench (int *) ;
 TYPE_1__* dev_to_hdlc (struct net_device*) ;
 int hdlc_close (struct net_device*) ;
 int hdlc_open (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int printk (char*) ;
 int sprintf (int ,char*,char*) ;

int cpc_open(struct net_device *dev)
{
 pc300dev_t *d = (pc300dev_t *) dev_to_hdlc(dev)->priv;
 struct ifreq ifr;
 int result;





 result = hdlc_open(dev);

 if (result)
  return result;

 sprintf(ifr.ifr_name, "%s", dev->name);
 result = cpc_opench(d);
 if (result)
  goto err_out;

 netif_start_queue(dev);
 return 0;

err_out:
 hdlc_close(dev);
 return result;
}
