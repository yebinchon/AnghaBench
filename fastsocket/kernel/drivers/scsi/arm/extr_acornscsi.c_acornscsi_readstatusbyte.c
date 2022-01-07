
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Status; } ;
struct TYPE_9__ {TYPE_1__ SCp; } ;
struct TYPE_10__ {TYPE_2__ scsi; } ;
typedef TYPE_3__ AS_Host ;


 int ASR_DBR ;
 int CMND_SBT ;
 int CMND_XFERINFO ;
 int SBIC_DATA ;
 int acornscsi_sbic_issuecmd (TYPE_3__*,int) ;
 int acornscsi_sbic_wait (TYPE_3__*,int ,int ,int,char*) ;
 int sbic_arm_read (TYPE_3__*,int ) ;

__attribute__((used)) static
void acornscsi_readstatusbyte(AS_Host *host)
{
    acornscsi_sbic_issuecmd(host, CMND_XFERINFO|CMND_SBT);
    acornscsi_sbic_wait(host, ASR_DBR, ASR_DBR, 1000, "reading status byte");
    host->scsi.SCp.Status = sbic_arm_read(host, SBIC_DATA);
}
