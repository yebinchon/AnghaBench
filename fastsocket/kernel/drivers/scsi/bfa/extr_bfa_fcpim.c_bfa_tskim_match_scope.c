
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_lun {int dummy; } ;
struct bfa_tskim_s {int tm_cmnd; int lun; } ;
typedef int lun ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;





 int WARN_ON (int) ;
 int memcmp (int *,struct scsi_lun*,int) ;

__attribute__((used)) static bfa_boolean_t
bfa_tskim_match_scope(struct bfa_tskim_s *tskim, struct scsi_lun lun)
{
 switch (tskim->tm_cmnd) {
 case 128:
  return BFA_TRUE;

 case 132:
 case 130:
 case 129:
 case 131:
  return !memcmp(&tskim->lun, &lun, sizeof(lun));

 default:
  WARN_ON(1);
 }

 return BFA_FALSE;
}
