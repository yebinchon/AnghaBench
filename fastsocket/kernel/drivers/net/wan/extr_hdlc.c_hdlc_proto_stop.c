
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* proto; } ;
typedef TYPE_2__ hdlc_device ;
struct TYPE_4__ {int (* stop ) (struct net_device*) ;} ;


 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static inline void hdlc_proto_stop(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 if (hdlc->proto->stop)
  hdlc->proto->stop(dev);
}
