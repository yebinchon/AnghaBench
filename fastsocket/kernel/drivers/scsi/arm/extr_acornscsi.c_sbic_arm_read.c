
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ AS_Host ;


 unsigned int SBIC_ASR ;
 scalar_t__ SBIC_REGIDX ;
 scalar_t__ SBIC_REGVAL ;
 int readl (scalar_t__) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline int sbic_arm_read(AS_Host *host, unsigned int reg)
{
    if(reg == SBIC_ASR)
    return readl(host->base + SBIC_REGIDX) & 255;
    writeb(reg, host->base + SBIC_REGIDX);
    return readl(host->base + SBIC_REGVAL) & 255;
}
