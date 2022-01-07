
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct frad_local {int config; scalar_t__* dlci; } ;
struct frad_conf {int dummy; } ;
struct conf_data {scalar_t__* dlci; } ;


 int CONFIG_DLCI_MAX ;
 int SDLA_DISABLE_COMMUNICATIONS ;
 int SDLA_ENABLE_COMMUNICATIONS ;
 int SDLA_SET_DLCI_CONFIGURATION ;
 int memcpy (struct conf_data*,int *,int) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 int sdla_cmd (struct net_device*,int ,int ,int ,struct conf_data*,int,int *,int *) ;

__attribute__((used)) static int sdla_reconfig(struct net_device *dev)
{
 struct frad_local *flp;
 struct conf_data data;
 int i, len;

 flp = netdev_priv(dev);

 len = 0;
 for(i=0;i<CONFIG_DLCI_MAX;i++)
  if (flp->dlci[i])
   data.dlci[len++] = flp->dlci[i];
 len *= 2;

 memcpy(&data, &flp->config, sizeof(struct frad_conf));
 len += sizeof(struct frad_conf);

 sdla_cmd(dev, SDLA_DISABLE_COMMUNICATIONS, 0, 0, ((void*)0), 0, ((void*)0), ((void*)0));
 sdla_cmd(dev, SDLA_SET_DLCI_CONFIGURATION, 0, 0, &data, len, ((void*)0), ((void*)0));
 sdla_cmd(dev, SDLA_ENABLE_COMMUNICATIONS, 0, 0, ((void*)0), 0, ((void*)0), ((void*)0));

 return(0);
}
