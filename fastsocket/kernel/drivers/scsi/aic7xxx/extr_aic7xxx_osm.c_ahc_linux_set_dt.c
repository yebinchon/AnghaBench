
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct scsi_target {scalar_t__ channel; int id; TYPE_1__ dev; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int dummy; } ;
struct TYPE_4__ {unsigned int ppr_options; unsigned int period; unsigned int width; int offset; } ;
struct ahc_initiator_tinfo {TYPE_2__ goal; } ;
struct ahc_devinfo {int dummy; } ;
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;


 int AHC_SYNCRATE_DT ;
 int AHC_TRANS_GOAL ;
 int FALSE ;
 unsigned int MSG_EXT_PPR_DT_REQ ;
 int ROLE_INITIATOR ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int ,int ,int ,scalar_t__,int ) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,scalar_t__,int ,int ,struct ahc_tmode_tstate**) ;
 struct ahc_syncrate* ahc_find_syncrate (struct ahc_softc*,unsigned int*,unsigned int*,int ) ;
 int ahc_linux_set_width (struct scsi_target*,int) ;
 int ahc_lock (struct ahc_softc*,unsigned long*) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,struct ahc_syncrate const*,unsigned int,int ,unsigned int,int ,int ) ;
 int ahc_unlock (struct ahc_softc*,unsigned long*) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 scalar_t__ spi_max_width (struct scsi_target*) ;

__attribute__((used)) static void ahc_linux_set_dt(struct scsi_target *starget, int dt)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ahc_softc *ahc = *((struct ahc_softc **)shost->hostdata);
 struct ahc_tmode_tstate *tstate;
 struct ahc_initiator_tinfo *tinfo
  = ahc_fetch_transinfo(ahc,
          starget->channel + 'A',
          shost->this_id, starget->id, &tstate);
 struct ahc_devinfo devinfo;
 unsigned int ppr_options = tinfo->goal.ppr_options
  & ~MSG_EXT_PPR_DT_REQ;
 unsigned int period = tinfo->goal.period;
 unsigned int width = tinfo->goal.width;
 unsigned long flags;
 const struct ahc_syncrate *syncrate;

 if (dt && spi_max_width(starget)) {
  ppr_options |= MSG_EXT_PPR_DT_REQ;
  if (!width)
   ahc_linux_set_width(starget, 1);
 } else if (period == 9)
  period = 10;

 ahc_compile_devinfo(&devinfo, shost->this_id, starget->id, 0,
       starget->channel + 'A', ROLE_INITIATOR);
 syncrate = ahc_find_syncrate(ahc, &period, &ppr_options,AHC_SYNCRATE_DT);
 ahc_lock(ahc, &flags);
 ahc_set_syncrate(ahc, &devinfo, syncrate, period, tinfo->goal.offset,
    ppr_options, AHC_TRANS_GOAL, FALSE);
 ahc_unlock(ahc, &flags);
}
