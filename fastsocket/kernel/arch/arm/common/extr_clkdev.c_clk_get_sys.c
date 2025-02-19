
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 int __clk_get (struct clk*) ;
 struct clk* clk_find (char const*,char const*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct clk *clk_get_sys(const char *dev_id, const char *con_id)
{
 struct clk *clk;

 mutex_lock(&clocks_mutex);
 clk = clk_find(dev_id, con_id);
 if (clk && !__clk_get(clk))
  clk = ((void*)0);
 mutex_unlock(&clocks_mutex);

 return clk ? clk : ERR_PTR(-ENOENT);
}
