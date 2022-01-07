
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCF_SCM_BCR ;
 int MCF_SCM_BCR_GBR ;
 int MCF_SCM_BCR_GBW ;
 int MCF_SCM_MPR ;
 scalar_t__ MCF_SCM_PACRA ;
 scalar_t__ MCF_SCM_PACRB ;
 scalar_t__ MCF_SCM_PACRC ;
 scalar_t__ MCF_SCM_PACRD ;
 scalar_t__ MCF_SCM_PACRE ;
 scalar_t__ MCF_SCM_PACRF ;

void scm_init(void)
{

 MCF_SCM_MPR = 0x77777777;



 MCF_SCM_PACRA = 0;
 MCF_SCM_PACRB = 0;
 MCF_SCM_PACRC = 0;
 MCF_SCM_PACRD = 0;
 MCF_SCM_PACRE = 0;
 MCF_SCM_PACRF = 0;


 MCF_SCM_BCR = (MCF_SCM_BCR_GBR | MCF_SCM_BCR_GBW);
}
