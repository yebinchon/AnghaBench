
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct ahc_softc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int SUCCESS ;
 int TRUE ;
 int ahc_lock (struct ahc_softc*,unsigned long*) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_reset_channel (struct ahc_softc*,scalar_t__,int ) ;
 int ahc_unlock (struct ahc_softc*,unsigned long*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int) ;
 scalar_t__ scmd_channel (struct scsi_cmnd*) ;

__attribute__((used)) static int
ahc_linux_bus_reset(struct scsi_cmnd *cmd)
{
 struct ahc_softc *ahc;
 int found;
 unsigned long flags;

 ahc = *(struct ahc_softc **)cmd->device->host->hostdata;

 ahc_lock(ahc, &flags);
 found = ahc_reset_channel(ahc, scmd_channel(cmd) + 'A',
                        TRUE);
 ahc_unlock(ahc, &flags);

 if (bootverbose)
  printf("%s: SCSI bus reset delivered. "
         "%d SCBs aborted.\n", ahc_name(ahc), found);

 return SUCCESS;
}
