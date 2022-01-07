
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rb_node; } ;


 TYPE_1__ mcast_tree ;

int ipath_mcast_tree_empty(void)
{
 return mcast_tree.rb_node == ((void*)0);
}
