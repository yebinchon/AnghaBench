
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rb_node; } ;
struct qib_ibport {TYPE_1__ mcast_tree; } ;



int qib_mcast_tree_empty(struct qib_ibport *ibp)
{
 return ibp->mcast_tree.rb_node == ((void*)0);
}
