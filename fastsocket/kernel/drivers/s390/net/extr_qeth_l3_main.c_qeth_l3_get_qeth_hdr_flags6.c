
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int QETH_CAST_ANYCAST ;
 int QETH_CAST_BROADCAST ;
 int QETH_CAST_MULTICAST ;
 int QETH_CAST_UNICAST ;
 int QETH_HDR_IPV6 ;
 int QETH_HDR_PASSTHRU ;
 int RTN_ANYCAST ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;

__attribute__((used)) static inline u8 qeth_l3_get_qeth_hdr_flags6(int cast_type)
{
 u8 ct = QETH_HDR_PASSTHRU | QETH_HDR_IPV6;
 if (cast_type == RTN_MULTICAST)
  return ct | QETH_CAST_MULTICAST;
 if (cast_type == RTN_ANYCAST)
  return ct | QETH_CAST_ANYCAST;
 if (cast_type == RTN_BROADCAST)
  return ct | QETH_CAST_BROADCAST;
 return ct | QETH_CAST_UNICAST;
}
