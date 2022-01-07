
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {scalar_t__ full_name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device_node* node; } ;


 scalar_t__ strcasecmp (char*,scalar_t__) ;
 TYPE_1__* to_of_device (struct device*) ;

__attribute__((used)) static int ibmebus_match_path(struct device *dev, void *data)
{
 struct device_node *dn = to_of_device(dev)->node;
 return (dn->full_name &&
  (strcasecmp((char *)data, dn->full_name) == 0));
}
