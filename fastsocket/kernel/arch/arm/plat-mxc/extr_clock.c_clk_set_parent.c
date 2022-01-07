
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set_parent ) (struct clk*,struct clk*) ;struct clk* parent; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct clk*,struct clk*) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 int ret = -EINVAL;

 if (clk == ((void*)0) || IS_ERR(clk) || parent == ((void*)0) ||
     IS_ERR(parent) || clk->set_parent == ((void*)0))
  return ret;

 mutex_lock(&clocks_mutex);
 ret = clk->set_parent(clk, parent);
 if (ret == 0)
  clk->parent = parent;
 mutex_unlock(&clocks_mutex);

 return ret;
}
