
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int device_type; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int S2IO_TEST_LEN ;

 int XFRAME_II_STAT_LEN ;

 int XFRAME_I_STAT_LEN ;
 struct s2io_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int s2io_get_sset_count(struct net_device *dev, int sset)
{
 struct s2io_nic *sp = netdev_priv(dev);

 switch (sset) {
 case 130:
  return S2IO_TEST_LEN;
 case 131:
  switch (sp->device_type) {
  case 128:
   return XFRAME_I_STAT_LEN;
  case 129:
   return XFRAME_II_STAT_LEN;
  default:
   return 0;
  }
 default:
  return -EOPNOTSUPP;
 }
}
