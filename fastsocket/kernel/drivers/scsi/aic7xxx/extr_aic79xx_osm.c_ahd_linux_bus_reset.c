
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int AHD_SHOW_RECOVERY ;
 int SUCCESS ;
 int TRUE ;
 int ahd_debug ;
 int ahd_lock (struct ahd_softc*,unsigned long*) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_reset_channel (struct ahd_softc*,scalar_t__,int ) ;
 int ahd_unlock (struct ahd_softc*,unsigned long*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,...) ;
 scalar_t__ scmd_channel (struct scsi_cmnd*) ;

__attribute__((used)) static int
ahd_linux_bus_reset(struct scsi_cmnd *cmd)
{
 struct ahd_softc *ahd;
 int found;
 unsigned long flags;

 ahd = *(struct ahd_softc **)cmd->device->host->hostdata;





 ahd_lock(ahd, &flags);

 found = ahd_reset_channel(ahd, scmd_channel(cmd) + 'A',
                        TRUE);
 ahd_unlock(ahd, &flags);

 if (bootverbose)
  printf("%s: SCSI bus reset delivered. "
         "%d SCBs aborted.\n", ahd_name(ahd), found);

 return (SUCCESS);
}
