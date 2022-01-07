
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short le16_to_cpu (unsigned short) ;

__attribute__((used)) static inline unsigned short _ne_inw(void *portp)
{
 unsigned short tmp;

 tmp = *(volatile unsigned short *)portp;
 return le16_to_cpu(tmp);
}
