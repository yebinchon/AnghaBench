
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct zfcp_unit {TYPE_2__* port; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_4__ {TYPE_1__* adapter; } ;
struct TYPE_3__ {int dbf; } ;


 scalar_t__ FCP_TMF_TGT_RESET ;
 int zfcp_dbf_scsi (char*,char const*,int,int ,struct scsi_cmnd*,int *,int ) ;

__attribute__((used)) static inline
void zfcp_dbf_scsi_devreset(const char *tag, u8 flag, struct zfcp_unit *unit,
       struct scsi_cmnd *scsi_cmnd)
{
 zfcp_dbf_scsi(flag == FCP_TMF_TGT_RESET ? "trst" : "lrst", tag, 1,
       unit->port->adapter->dbf, scsi_cmnd, ((void*)0), 0);
}
