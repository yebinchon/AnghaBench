
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t word ;
typedef int byte ;



__attribute__((used)) static byte ie_compare(byte *ie1, byte *ie2)
{
  word i;
  if(!ie1 || ! ie2) return 0;
  if(!ie1[0]) return 0;
  for(i=0;i<(word)(ie1[0]+1);i++) if(ie1[i]!=ie2[i]) return 0;
  return 1;
}
