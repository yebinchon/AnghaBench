
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 scalar_t__ PA_MRSHPC ;
 scalar_t__ PA_SMSC ;

__attribute__((used)) static inline volatile __u16 *
port2adr(unsigned int port)
{
 if (port >= 0x2000 && port < 0x2020)
  return (volatile __u16 *) (PA_MRSHPC + (port - 0x2000));
 else if (port >= 0x300 && port < 0x310)
  return (volatile __u16 *) (PA_SMSC + (port - 0x300));

 return (volatile __u16 *)port;
}
