
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cycx_hw {int dpmbase; } ;


 int memcpy_toio (int,void*,int) ;
 int writeb (int ,int) ;

int cycx_poke(struct cycx_hw *hw, u32 addr, void *buf, u32 len)
{
 if (len == 1)
  writeb(*(u8*)buf, hw->dpmbase + addr);
 else
  memcpy_toio(hw->dpmbase + addr, buf, len);

 return 0;
}
