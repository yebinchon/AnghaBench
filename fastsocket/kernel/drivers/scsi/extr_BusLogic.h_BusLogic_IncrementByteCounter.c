
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BusLogic_ByteCounter {unsigned int Units; int Billions; } ;



__attribute__((used)) static inline void BusLogic_IncrementByteCounter(struct BusLogic_ByteCounter
       *ByteCounter, unsigned int Amount)
{
 ByteCounter->Units += Amount;
 if (ByteCounter->Units > 999999999) {
  ByteCounter->Units -= 1000000000;
  ByteCounter->Billions++;
 }
}
