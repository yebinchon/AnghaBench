
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streamzap_ir {int dummy; } ;


 unsigned char SZ_PULSE_MASK ;
 int sz_push_full_pulse (struct streamzap_ir*,unsigned char) ;

__attribute__((used)) static void sz_push_half_pulse(struct streamzap_ir *sz,
          unsigned char value)
{
 sz_push_full_pulse(sz, (value & SZ_PULSE_MASK) >> 4);
}
