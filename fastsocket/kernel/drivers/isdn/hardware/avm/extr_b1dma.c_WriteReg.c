
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int avmcard ;


 int b1dma_tolink (int *,int*,int) ;

__attribute__((used)) static int WriteReg(avmcard *card, u32 reg, u8 val)
{
 u8 cmd = 0x00;
 if ( b1dma_tolink(card, &cmd, 1) == 0
     && b1dma_tolink(card, &reg, 4) == 0) {
  u32 tmp = val;
  return b1dma_tolink(card, &tmp, 4);
 }
 return -1;
}
