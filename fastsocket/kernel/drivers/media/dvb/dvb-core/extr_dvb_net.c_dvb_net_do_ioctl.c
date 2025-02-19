
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_net_priv {int pid; int feedtype; } ;
struct dvb_net_if {int if_num; int feedtype; int pid; } ;
struct dvb_net {struct net_device** device; int * state; } ;
struct dvb_device {TYPE_1__* adapter; struct dvb_net* priv; } ;
struct __dvb_net_if_old {int if_num; int pid; } ;
struct TYPE_2__ {int module; } ;


 int CAP_SYS_ADMIN ;
 unsigned long DVB_NET_DEVICES_MAX ;
 int DVB_NET_FEEDTYPE_MPE ;
 int EINVAL ;
 int ENOTTY ;
 int EPERM ;



 int O_ACCMODE ;
 int O_RDONLY ;


 int capable (int ) ;
 int dvb_net_add_if (struct dvb_net*,int ,int ) ;
 int dvb_net_remove_if (struct dvb_net*,unsigned long) ;
 int module_put (int ) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int dvb_net_do_ioctl(struct inode *inode, struct file *file,
    unsigned int cmd, void *parg)
{
 struct dvb_device *dvbdev = file->private_data;
 struct dvb_net *dvbnet = dvbdev->priv;

 if (((file->f_flags&O_ACCMODE)==O_RDONLY))
  return -EPERM;

 switch (cmd) {
 case 132:
 {
  struct dvb_net_if *dvbnetif = parg;
  int result;

  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;

  if (!try_module_get(dvbdev->adapter->module))
   return -EPERM;

  result=dvb_net_add_if(dvbnet, dvbnetif->pid, dvbnetif->feedtype);
  if (result<0) {
   module_put(dvbdev->adapter->module);
   return result;
  }
  dvbnetif->if_num=result;
  break;
 }
 case 131:
 {
  struct net_device *netdev;
  struct dvb_net_priv *priv_data;
  struct dvb_net_if *dvbnetif = parg;

  if (dvbnetif->if_num >= DVB_NET_DEVICES_MAX ||
      !dvbnet->state[dvbnetif->if_num])
   return -EINVAL;

  netdev = dvbnet->device[dvbnetif->if_num];

  priv_data = netdev_priv(netdev);
  dvbnetif->pid=priv_data->pid;
  dvbnetif->feedtype=priv_data->feedtype;
  break;
 }
 case 130:
 {
  int ret;

  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
  if ((unsigned long) parg >= DVB_NET_DEVICES_MAX)
   return -EINVAL;
  ret = dvb_net_remove_if(dvbnet, (unsigned long) parg);
  if (!ret)
   module_put(dvbdev->adapter->module);
  return ret;
 }


 case 129:
 {
  struct __dvb_net_if_old *dvbnetif = parg;
  int result;

  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;

  if (!try_module_get(dvbdev->adapter->module))
   return -EPERM;

  result=dvb_net_add_if(dvbnet, dvbnetif->pid, DVB_NET_FEEDTYPE_MPE);
  if (result<0) {
   module_put(dvbdev->adapter->module);
   return result;
  }
  dvbnetif->if_num=result;
  break;
 }
 case 128:
 {
  struct net_device *netdev;
  struct dvb_net_priv *priv_data;
  struct __dvb_net_if_old *dvbnetif = parg;

  if (dvbnetif->if_num >= DVB_NET_DEVICES_MAX ||
      !dvbnet->state[dvbnetif->if_num])
   return -EINVAL;

  netdev = dvbnet->device[dvbnetif->if_num];

  priv_data = netdev_priv(netdev);
  dvbnetif->pid=priv_data->pid;
  break;
 }
 default:
  return -ENOTTY;
 }
 return 0;
}
