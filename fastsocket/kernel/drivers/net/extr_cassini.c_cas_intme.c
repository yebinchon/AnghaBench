
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TX_DESC_RINGN_SIZE (int) ;

__attribute__((used)) static inline int cas_intme(int ring, int entry)
{

 if (!(entry & ((TX_DESC_RINGN_SIZE(ring) >> 1) - 1)))
  return 1;
 return 0;
}
