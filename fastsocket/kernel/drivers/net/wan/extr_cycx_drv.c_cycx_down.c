
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cycx_hw {int dpmbase; } ;


 int iounmap (int ) ;

int cycx_down(struct cycx_hw *hw)
{
 iounmap(hw->dpmbase);
 return 0;
}
