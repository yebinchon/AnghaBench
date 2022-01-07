
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cycx_hw {scalar_t__ dpmbase; } ;


 scalar_t__ GEN_CYCX_INTR ;
 int writew (int ,scalar_t__) ;

void cycx_intr(struct cycx_hw *hw)
{
 writew(0, hw->dpmbase + GEN_CYCX_INTR);
}
