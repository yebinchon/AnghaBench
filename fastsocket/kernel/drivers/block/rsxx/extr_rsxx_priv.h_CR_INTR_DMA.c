
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int CR_INTR_DMA(int N)
{
 static const unsigned int _CR_INTR_DMA[] = {
  135, 134, 133, 132,
  131, 130, 129, 128
 };
 return _CR_INTR_DMA[N];
}
