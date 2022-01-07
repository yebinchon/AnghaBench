
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct of_device {int node; } ;


 struct of_device_id const* of_match_node (struct of_device_id const*,int ) ;

const struct of_device_id *of_match_device(const struct of_device_id *matches,
     const struct of_device *dev)
{
 if (!dev->node)
  return ((void*)0);
 return of_match_node(matches, dev->node);
}
