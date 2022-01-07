
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int parent; } ;
struct scsi_target {scalar_t__ channel; int id; TYPE_1__ dev; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {size_t unit; } ;
struct ahd_linux_iocell_opts {int precomp; } ;
struct TYPE_4__ {unsigned int ppr_options; unsigned int period; int offset; } ;
struct ahd_initiator_tinfo {TYPE_2__ goal; } ;
struct ahd_devinfo {int dummy; } ;
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;


 int AHD_SET_PRECOMP (struct ahd_softc*,int ) ;
 int AHD_SHOW_DV ;
 int AHD_SYNCRATE_MAX ;
 int AHD_SYNCRATE_ULTRA2 ;
 int AHD_TRANS_GOAL ;
 int AIC79XX_DEFAULT_PRECOMP ;
 size_t ARRAY_SIZE (struct ahd_linux_iocell_opts*) ;
 int FALSE ;
 unsigned int MSG_EXT_PPR_DT_REQ ;
 unsigned int MSG_EXT_PPR_PCOMP_EN ;
 int ROLE_INITIATOR ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int ,int ,scalar_t__,int ) ;
 int ahd_debug ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,scalar_t__,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_find_syncrate (struct ahd_softc*,unsigned int*,unsigned int*,int ) ;
 int ahd_lock (struct ahd_softc*,unsigned long*) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,unsigned int,int ,unsigned int,int ,int ) ;
 int ahd_unlock (struct ahd_softc*,unsigned long*) ;
 struct ahd_linux_iocell_opts* aic79xx_iocell_info ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int printf (char*,char*,char*) ;
 scalar_t__ spi_max_width (struct scsi_target*) ;

__attribute__((used)) static void ahd_linux_set_pcomp_en(struct scsi_target *starget, int pcomp)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ahd_softc *ahd = *((struct ahd_softc **)shost->hostdata);
 struct ahd_tmode_tstate *tstate;
 struct ahd_initiator_tinfo *tinfo
  = ahd_fetch_transinfo(ahd,
          starget->channel + 'A',
          shost->this_id, starget->id, &tstate);
 struct ahd_devinfo devinfo;
 unsigned int ppr_options = tinfo->goal.ppr_options
  & ~MSG_EXT_PPR_PCOMP_EN;
 unsigned int period = tinfo->goal.period;
 unsigned int dt = ppr_options & MSG_EXT_PPR_DT_REQ;
 unsigned long flags;







 if (pcomp && spi_max_width(starget)) {
  uint8_t precomp;

  if (ahd->unit < ARRAY_SIZE(aic79xx_iocell_info)) {
   const struct ahd_linux_iocell_opts *iocell_opts;

   iocell_opts = &aic79xx_iocell_info[ahd->unit];
   precomp = iocell_opts->precomp;
  } else {
   precomp = AIC79XX_DEFAULT_PRECOMP;
  }
  ppr_options |= MSG_EXT_PPR_PCOMP_EN;
  AHD_SET_PRECOMP(ahd, precomp);
 } else {
  AHD_SET_PRECOMP(ahd, 0);
 }

 ahd_compile_devinfo(&devinfo, shost->this_id, starget->id, 0,
       starget->channel + 'A', ROLE_INITIATOR);
 ahd_find_syncrate(ahd, &period, &ppr_options,
     dt ? AHD_SYNCRATE_MAX : AHD_SYNCRATE_ULTRA2);

 ahd_lock(ahd, &flags);
 ahd_set_syncrate(ahd, &devinfo, period, tinfo->goal.offset,
    ppr_options, AHD_TRANS_GOAL, FALSE);
 ahd_unlock(ahd, &flags);
}
