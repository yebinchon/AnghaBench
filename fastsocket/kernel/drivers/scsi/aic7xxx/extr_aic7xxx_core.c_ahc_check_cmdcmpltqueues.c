
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct target_cmd {int dummy; } ;
struct ahc_softc {size_t qoutfifonext; scalar_t__* qoutfifo; int flags; size_t tqinfifonext; TYPE_1__* targetcmds; int tqinfifofnext; int shared_data_dmamap; int shared_data_dmat; } ;
struct TYPE_2__ {scalar_t__ cmd_valid; } ;


 int AHC_RUN_QOUTFIFO ;
 int AHC_RUN_TQINFIFO ;
 int AHC_TARGETROLE ;
 int AHC_TQINFIFO_BLOCKED ;
 int BUS_DMASYNC_POSTREAD ;
 scalar_t__ SCB_LIST_NULL ;
 int ahc_dmamap_sync (struct ahc_softc*,int ,int ,size_t,int,int ) ;
 size_t ahc_targetcmd_offset (struct ahc_softc*,int ) ;

__attribute__((used)) static u_int
ahc_check_cmdcmpltqueues(struct ahc_softc *ahc)
{
 u_int retval;

 retval = 0;
 ahc_dmamap_sync(ahc, ahc->shared_data_dmat, ahc->shared_data_dmamap,
             ahc->qoutfifonext, 1,
   BUS_DMASYNC_POSTREAD);
 if (ahc->qoutfifo[ahc->qoutfifonext] != SCB_LIST_NULL)
  retval |= AHC_RUN_QOUTFIFO;
 return (retval);
}
