
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RX_RING_SIZE ;

__attribute__((used)) static __inline__ int NEXT_RX(int num)
{

 if(++num > RX_RING_SIZE)
  num = 0;
 return num;
}
