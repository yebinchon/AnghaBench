
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 quantize_timing(int timing, int quant)
{
 return (timing + quant - 1) / quant;
}
