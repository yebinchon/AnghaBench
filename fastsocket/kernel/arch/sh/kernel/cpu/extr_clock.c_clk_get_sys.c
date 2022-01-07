
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 struct clk* clk_find (char const*,char const*) ;
 int clock_list_sem ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct clk *clk_get_sys(const char *dev_id, const char *con_id)
{
 struct clk *clk;

 mutex_lock(&clock_list_sem);
 clk = clk_find(dev_id, con_id);
 mutex_unlock(&clock_list_sem);

 return clk ? clk : ERR_PTR(-ENOENT);
}
