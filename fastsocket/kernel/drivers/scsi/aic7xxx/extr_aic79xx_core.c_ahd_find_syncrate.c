
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 scalar_t__ AHD_SYNCRATE_DT ;
 scalar_t__ AHD_SYNCRATE_MIN ;
 scalar_t__ AHD_SYNCRATE_MIN_DT ;
 scalar_t__ AHD_SYNCRATE_PACED ;
 scalar_t__ AHD_SYNCRATE_ULTRA2 ;
 scalar_t__ MSG_EXT_PPR_DT_REQ ;
 scalar_t__ MSG_EXT_PPR_IU_REQ ;
 scalar_t__ MSG_EXT_PPR_QAS_REQ ;
 scalar_t__ MSG_EXT_PPR_RTI ;

void
ahd_find_syncrate(struct ahd_softc *ahd, u_int *period,
    u_int *ppr_options, u_int maxsync)
{
 if (*period < maxsync)
  *period = maxsync;

 if ((*ppr_options & MSG_EXT_PPR_DT_REQ) != 0
  && *period > AHD_SYNCRATE_MIN_DT)
  *ppr_options &= ~MSG_EXT_PPR_DT_REQ;

 if (*period > AHD_SYNCRATE_MIN)
  *period = 0;


 if (*period > AHD_SYNCRATE_PACED)
  *ppr_options &= ~MSG_EXT_PPR_RTI;

 if ((*ppr_options & MSG_EXT_PPR_IU_REQ) == 0)
  *ppr_options &= (MSG_EXT_PPR_DT_REQ|MSG_EXT_PPR_QAS_REQ);

 if ((*ppr_options & MSG_EXT_PPR_DT_REQ) == 0)
  *ppr_options &= MSG_EXT_PPR_QAS_REQ;


 if ((*ppr_options & MSG_EXT_PPR_IU_REQ) == 0
  && *period < AHD_SYNCRATE_DT)
  *period = AHD_SYNCRATE_DT;


 if ((*ppr_options & MSG_EXT_PPR_DT_REQ) == 0
  && *period < AHD_SYNCRATE_ULTRA2)
  *period = AHD_SYNCRATE_ULTRA2;
}
