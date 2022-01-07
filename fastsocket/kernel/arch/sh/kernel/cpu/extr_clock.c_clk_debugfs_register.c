
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dentry; struct clk* parent; } ;


 int clk_debugfs_register_one (struct clk*) ;

__attribute__((used)) static int clk_debugfs_register(struct clk *c)
{
 int err;
 struct clk *pa = c->parent;

 if (pa && !pa->dentry) {
  err = clk_debugfs_register(pa);
  if (err)
   return err;
 }

 if (!c->dentry) {
  err = clk_debugfs_register_one(c);
  if (err)
   return err;
 }
 return 0;
}
