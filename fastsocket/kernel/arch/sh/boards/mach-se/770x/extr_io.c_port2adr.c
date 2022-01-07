
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 scalar_t__ PA_83902 ;
 scalar_t__ PA_MRSHPC ;
 scalar_t__ PA_SUPERIO ;

__attribute__((used)) static inline volatile __u16 *
port2adr(unsigned int port)
{
 if (port & 0xff000000)
  return ( volatile __u16 *) port;
 if (port >= 0x2000)
  return (volatile __u16 *) (PA_MRSHPC + (port - 0x2000));
 else if (port >= 0x1000)
  return (volatile __u16 *) (PA_83902 + (port << 1));
 else
  return (volatile __u16 *) (PA_SUPERIO + (port << 1));
}
