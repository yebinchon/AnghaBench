
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* m; } ;
struct s_smc {TYPE_2__ mib; } ;
struct TYPE_3__ {void* fddiMACOldDownstreamNbr; void* fddiMACOldUpstreamNbr; } ;


 size_t MAC0 ;
 void* SMT_Unknown ;

__attribute__((used)) static void smt_clear_old_una_dna(struct s_smc *smc)
{
 smc->mib.m[MAC0].fddiMACOldUpstreamNbr = SMT_Unknown ;
 smc->mib.m[MAC0].fddiMACOldDownstreamNbr = SMT_Unknown ;
}
