
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set_parent ) (struct clk*,struct clk*) ;struct clk* parent; } ;


 int ENODEV ;
 int clock_lock () ;
 int clock_unlock () ;
 int stub1 (struct clk*,struct clk*) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 int ret = -ENODEV;
 if (!clk->set_parent)
  goto out;

 clock_lock();
 ret = clk->set_parent(clk, parent);
 if (!ret)
  clk->parent = parent;
 clock_unlock();

out:
 return ret;
}
