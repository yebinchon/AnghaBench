
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cycx_hw {int dpmbase; } ;


 int writeb (int ,int ) ;

__attribute__((used)) static void cycx_inten(struct cycx_hw *hw)
{
 writeb(0, hw->dpmbase);
}
