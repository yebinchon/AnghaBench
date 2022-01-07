
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ le16_to_cpu (unsigned short volatile) ;

__attribute__((used)) static inline unsigned short _ne_inw(void *portp)
{
 return (unsigned short)le16_to_cpu(*(volatile unsigned short *)portp);
}
