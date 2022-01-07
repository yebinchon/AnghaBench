
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct esp_lun_data* hostdata; } ;
struct esp_lun_data {int dummy; } ;


 int kfree (struct esp_lun_data*) ;

__attribute__((used)) static void esp_slave_destroy(struct scsi_device *dev)
{
 struct esp_lun_data *lp = dev->hostdata;

 kfree(lp);
 dev->hostdata = ((void*)0);
}
