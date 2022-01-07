
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef TYPE_1__ port_t ;



__attribute__((used)) static inline struct net_device *port_to_dev(port_t *port)
{
 return port->dev;
}
