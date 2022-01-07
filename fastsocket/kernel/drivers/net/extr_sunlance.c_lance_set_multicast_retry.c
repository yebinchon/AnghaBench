
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int lance_set_multicast (struct net_device*) ;

__attribute__((used)) static void lance_set_multicast_retry(unsigned long _opaque)
{
 struct net_device *dev = (struct net_device *) _opaque;

 lance_set_multicast(dev);
}
