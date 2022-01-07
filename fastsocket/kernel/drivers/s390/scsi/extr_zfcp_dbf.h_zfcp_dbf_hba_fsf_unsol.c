
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_dbf {TYPE_1__* hba; } ;
struct fsf_status_read_buffer {int dummy; } ;
struct TYPE_2__ {int level; } ;


 int _zfcp_dbf_hba_fsf_unsol (char const*,int,struct zfcp_dbf*,struct fsf_status_read_buffer*) ;

__attribute__((used)) static inline
void zfcp_dbf_hba_fsf_unsol(const char *tag, struct zfcp_dbf *dbf,
       struct fsf_status_read_buffer *buf)
{
 int level = 2;

 if (level <= dbf->hba->level)
  _zfcp_dbf_hba_fsf_unsol(tag, level, dbf, buf);
}
