
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {struct adapter* ml_priv; } ;
struct adapter {int msg_enable; } ;



__attribute__((used)) static void set_msglevel(struct net_device *dev, u32 val)
{
 struct adapter *adapter = dev->ml_priv;

 adapter->msg_enable = val;
}
