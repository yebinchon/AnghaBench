
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RX_RING_SIZE ;

__attribute__((used)) static __inline__ int PREV_RX(int num)
{
 if(--num < 0)
  num = RX_RING_SIZE;
 return num;
}
