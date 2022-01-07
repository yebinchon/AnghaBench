
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPFail ;
 unsigned int RxProtoIP ;
 unsigned int RxProtoTCP ;
 unsigned int RxProtoUDP ;
 int TCPFail ;
 int UDPFail ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline unsigned int cp_rx_csum_ok (u32 status)
{
 unsigned int protocol = (status >> 16) & 0x3;

 if (likely((protocol == RxProtoTCP) && (!(status & TCPFail))))
  return 1;
 else if ((protocol == RxProtoUDP) && (!(status & UDPFail)))
  return 1;
 else if ((protocol == RxProtoIP) && (!(status & IPFail)))
  return 1;
 return 0;
}
