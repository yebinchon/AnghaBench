
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct target_cmd {int dummy; } ;
struct TYPE_5__ {int dmamap; } ;
struct ahd_softc {int qoutfifonext; scalar_t__ qoutfifonext_valid_tag; int flags; size_t tqinfifonext; TYPE_3__* targetcmds; int tqinfifofnext; TYPE_2__ shared_data_map; int shared_data_dmat; TYPE_1__* qoutfifo; } ;
struct TYPE_6__ {scalar_t__ cmd_valid; } ;
struct TYPE_4__ {scalar_t__ valid_tag; } ;


 int AHD_RUN_QOUTFIFO ;
 int AHD_RUN_TQINFIFO ;
 int AHD_TARGETROLE ;
 int AHD_TQINFIFO_BLOCKED ;
 int BUS_DMASYNC_POSTREAD ;
 int ahd_dmamap_sync (struct ahd_softc*,int ,int ,int,int,int ) ;
 int ahd_targetcmd_offset (struct ahd_softc*,int ) ;

__attribute__((used)) static u_int
ahd_check_cmdcmpltqueues(struct ahd_softc *ahd)
{
 u_int retval;

 retval = 0;
 ahd_dmamap_sync(ahd, ahd->shared_data_dmat, ahd->shared_data_map.dmamap,
             ahd->qoutfifonext * sizeof(*ahd->qoutfifo),
          sizeof(*ahd->qoutfifo), BUS_DMASYNC_POSTREAD);
 if (ahd->qoutfifo[ahd->qoutfifonext].valid_tag
   == ahd->qoutfifonext_valid_tag)
  retval |= AHD_RUN_QOUTFIFO;
 return (retval);
}
