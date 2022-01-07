
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 unsigned long* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline struct ctlr_info *shost_to_hba(struct Scsi_Host *sh)
{
 unsigned long *priv = shost_priv(sh);
 return (struct ctlr_info *) *priv;
}
