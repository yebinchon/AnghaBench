
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ prev; scalar_t__ next; } ;
struct clk {TYPE_2__* ops; TYPE_3__ node; TYPE_3__ sibling; TYPE_1__* parent; scalar_t__ usecount; int children; } ;
struct TYPE_5__ {int (* init ) (struct clk*) ;} ;
struct TYPE_4__ {int children; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clock_list ;
 int clock_list_sem ;
 int list_add (TYPE_3__*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int root_clks ;
 int stub1 (struct clk*) ;

int clk_register(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;




 if (clk->node.next || clk->node.prev)
  return 0;

 mutex_lock(&clock_list_sem);

 INIT_LIST_HEAD(&clk->children);
 clk->usecount = 0;

 if (clk->parent)
  list_add(&clk->sibling, &clk->parent->children);
 else
  list_add(&clk->sibling, &root_clks);

 list_add(&clk->node, &clock_list);
 if (clk->ops && clk->ops->init)
  clk->ops->init(clk);
 mutex_unlock(&clock_list_sem);

 return 0;
}
