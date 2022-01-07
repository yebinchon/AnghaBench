
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
typedef int phandle ;
struct TYPE_3__ {struct device_node* lastnode; } ;
typedef TYPE_1__ DATA ;


 struct device_node* of_find_node_by_phandle (int ) ;

__attribute__((used)) static struct device_node *get_node(phandle n, DATA *data)
{
 struct device_node *dp = of_find_node_by_phandle(n);

 if (dp)
  data->lastnode = dp;

 return dp;
}
