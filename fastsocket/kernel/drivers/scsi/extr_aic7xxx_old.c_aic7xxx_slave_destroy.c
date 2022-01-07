
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct aic_dev_data* hostdata; } ;
struct aic_dev_data {int list; } ;


 int kfree (struct aic_dev_data*) ;
 int list_del (int *) ;

__attribute__((used)) static void
aic7xxx_slave_destroy(struct scsi_device *SDptr)
{
  struct aic_dev_data *aic_dev = SDptr->hostdata;

  list_del(&aic_dev->list);
  SDptr->hostdata = ((void*)0);
  kfree(aic_dev);
  return;
}
