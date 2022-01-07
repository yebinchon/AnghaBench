
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cycx_hw {int dpmbase; } ;


 int memcpy_fromio (void*,int,int) ;
 int readb (int) ;

int cycx_peek(struct cycx_hw *hw, u32 addr, void *buf, u32 len)
{
 if (len == 1)
  *(u8*)buf = readb(hw->dpmbase + addr);
 else
  memcpy_fromio(buf, hw->dpmbase + addr, len);

 return 0;
}
