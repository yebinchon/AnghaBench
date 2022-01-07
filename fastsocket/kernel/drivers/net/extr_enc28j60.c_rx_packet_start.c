
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ RSV_SIZE ;
 scalar_t__ RXEND_INIT ;
 scalar_t__ RXSTART_INIT ;

__attribute__((used)) static u16 rx_packet_start(u16 ptr)
{
 if (ptr + RSV_SIZE > RXEND_INIT)
  return (ptr + RSV_SIZE) - (RXEND_INIT - RXSTART_INIT + 1);
 else
  return ptr + RSV_SIZE;
}
