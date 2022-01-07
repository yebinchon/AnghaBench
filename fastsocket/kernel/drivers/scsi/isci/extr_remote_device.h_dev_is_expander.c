
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {scalar_t__ dev_type; } ;


 scalar_t__ EDGE_DEV ;
 scalar_t__ FANOUT_DEV ;

__attribute__((used)) static inline bool dev_is_expander(struct domain_device *dev)
{
 return dev->dev_type == EDGE_DEV || dev->dev_type == FANOUT_DEV;
}
