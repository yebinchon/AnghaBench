
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cycx_hw {scalar_t__ dpmbase; } ;


 scalar_t__ CONF_OFFSET ;
 int FIXED_BUFFERS ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void cycx_bootcfg(struct cycx_hw *hw)
{

 writeb(FIXED_BUFFERS, hw->dpmbase + CONF_OFFSET);
}
