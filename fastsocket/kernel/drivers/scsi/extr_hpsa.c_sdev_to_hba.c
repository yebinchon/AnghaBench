
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct ctlr_info {int dummy; } ;


 unsigned long* shost_priv (int ) ;

__attribute__((used)) static inline struct ctlr_info *sdev_to_hba(struct scsi_device *sdev)
{
 unsigned long *priv = shost_priv(sdev->host);
 return (struct ctlr_info *) *priv;
}
