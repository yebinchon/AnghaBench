
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct clk const clk ;


 int EINVAL ;

__attribute__((used)) static int _clk_can_use_parent(const struct clk *clk_arr[], unsigned int size,
          struct clk *parent)
{
 int i;

 for (i = 0; i < size; i++)
  if (parent == clk_arr[i])
   return i;

 return -EINVAL;
}
