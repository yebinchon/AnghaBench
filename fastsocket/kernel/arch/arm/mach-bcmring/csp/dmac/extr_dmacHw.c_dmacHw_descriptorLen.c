
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dmacHw_DESC_t ;
typedef int dmacHw_DESC_RING_t ;



uint32_t dmacHw_descriptorLen(uint32_t descCnt
    ) {

 return (descCnt * sizeof(dmacHw_DESC_t)) + sizeof(dmacHw_DESC_RING_t) +
  sizeof(uint32_t);
}
