
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int link; } ;
struct dcb_output {TYPE_1__ sorconf; } ;


 scalar_t__ nvd0_sor_soff (struct dcb_output*) ;

__attribute__((used)) static inline u32
nvd0_sor_loff(struct dcb_output *outp)
{
 return nvd0_sor_soff(outp) + !(outp->sorconf.link & 1) * 0x80;
}
