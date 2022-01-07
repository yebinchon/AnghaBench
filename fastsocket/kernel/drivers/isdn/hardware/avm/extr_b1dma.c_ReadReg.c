
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int avmcard ;


 scalar_t__ b1dma_fromlink (int *,int*,int) ;
 scalar_t__ b1dma_tolink (int *,int*,int) ;

__attribute__((used)) static u8 ReadReg(avmcard *card, u32 reg)
{
 u8 cmd = 0x01;
 if ( b1dma_tolink(card, &cmd, 1) == 0
     && b1dma_tolink(card, &reg, 4) == 0) {
  u32 tmp;
  if (b1dma_fromlink(card, &tmp, 4) == 0)
   return (u8)tmp;
 }
 return 0xff;
}
