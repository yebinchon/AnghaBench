
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_fsf_req {int dummy; } ;
struct zfcp_dbf {TYPE_1__* scsi; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {int level; } ;


 int _zfcp_dbf_scsi (char const*,char const*,int,struct zfcp_dbf*,struct scsi_cmnd*,struct zfcp_fsf_req*,unsigned long) ;

__attribute__((used)) static inline
void zfcp_dbf_scsi(const char *tag, const char *tag2, int level,
     struct zfcp_dbf *dbf, struct scsi_cmnd *scmd,
     struct zfcp_fsf_req *req, unsigned long old_id)
{
 if (level <= dbf->scsi->level)
  _zfcp_dbf_scsi(tag, tag2, level, dbf, scmd, req, old_id);
}
