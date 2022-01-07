
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int type; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char * ipr_ioa_info(struct Scsi_Host *host)
{
 static char buffer[512];
 struct ipr_ioa_cfg *ioa_cfg;
 unsigned long lock_flags = 0;

 ioa_cfg = (struct ipr_ioa_cfg *) host->hostdata;

 spin_lock_irqsave(host->host_lock, lock_flags);
 sprintf(buffer, "IBM %X Storage Adapter", ioa_cfg->type);
 spin_unlock_irqrestore(host->host_lock, lock_flags);

 return buffer;
}
