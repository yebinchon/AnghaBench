
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int ENOSYS ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 return -ENOSYS;
}
