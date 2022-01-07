
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_2__ {scalar_t__ detail; } ;
typedef TYPE_1__ adpt_hba ;



__attribute__((used)) static const char *adpt_info(struct Scsi_Host *host)
{
 adpt_hba* pHba;

 pHba = (adpt_hba *) host->hostdata[0];
 return (char *) (pHba->detail);
}
