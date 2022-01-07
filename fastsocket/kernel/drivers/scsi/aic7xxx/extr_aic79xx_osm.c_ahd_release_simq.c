
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int host; } ;


 int scsi_unblock_requests (int ) ;

__attribute__((used)) static void
ahd_release_simq(struct ahd_softc *ahd)
{
 scsi_unblock_requests(ahd->platform_data->host);
}
