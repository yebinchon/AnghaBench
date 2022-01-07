
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;
typedef long ASC_DCNT ;


 scalar_t__ AscReadLramWord (int ,int) ;

__attribute__((used)) static ASC_DCNT AscMemSumLramWord(PortAddr iop_base, ushort s_addr, int words)
{
 ASC_DCNT sum;
 int i;

 sum = 0L;
 for (i = 0; i < words; i++, s_addr += 2) {
  sum += AscReadLramWord(iop_base, s_addr);
 }
 return (sum);
}
