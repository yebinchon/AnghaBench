
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct channel_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 TYPE_1__* dev_to_hdlc (struct net_device*) ;

__attribute__((used)) static inline struct channel_data* dev_to_chan(struct net_device *dev)
{
 return (struct channel_data *)dev_to_hdlc(dev)->priv;
}
