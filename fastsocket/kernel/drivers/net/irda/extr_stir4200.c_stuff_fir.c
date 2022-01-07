
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int IRDA_TRANS ;

__attribute__((used)) static inline __u8 *stuff_fir(__u8 *p, __u8 c)
{
 switch(c) {
 case 0x7d:
 case 0x7e:
 case 0x7f:
  *p++ = 0x7d;
  c ^= IRDA_TRANS;

 default:
  *p++ = c;
 }
 return p;
}
