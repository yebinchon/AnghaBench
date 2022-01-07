
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct ahd_initiator_tinfo {int dummy; } ;
struct ahd_devinfo {int target; int our_scsiid; int channel; } ;


 int AHD_NEG_IF_NON_ASYNC ;
 int AHD_SHOW_MESSAGES ;
 int ahd_debug ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int ,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_print_devinfo (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_update_neg_request (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int ) ;
 int printf (char*) ;

__attribute__((used)) static void
ahd_force_renegotiation(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
 struct ahd_initiator_tinfo *targ_info;
 struct ahd_tmode_tstate *tstate;







 targ_info = ahd_fetch_transinfo(ahd,
     devinfo->channel,
     devinfo->our_scsiid,
     devinfo->target,
     &tstate);
 ahd_update_neg_request(ahd, devinfo, tstate,
          targ_info, AHD_NEG_IF_NON_ASYNC);
}
