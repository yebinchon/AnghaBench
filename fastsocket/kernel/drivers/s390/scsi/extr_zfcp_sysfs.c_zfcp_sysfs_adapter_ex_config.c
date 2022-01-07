
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int adapter_features; int qdio; } ;
struct fsf_statistics_info {int dummy; } ;
struct fsf_qtcb_bottom_config {struct fsf_statistics_info stat_info; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int FSF_FEATURE_MEASUREMENT_DATA ;
 int GFP_KERNEL ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int kfree (struct fsf_qtcb_bottom_config*) ;
 struct fsf_qtcb_bottom_config* kzalloc (int,int ) ;
 int zfcp_fsf_exchange_config_data_sync (int ,struct fsf_qtcb_bottom_config*) ;

__attribute__((used)) static int zfcp_sysfs_adapter_ex_config(struct device *dev,
     struct fsf_statistics_info *stat_inf)
{
 struct Scsi_Host *scsi_host = dev_to_shost(dev);
 struct fsf_qtcb_bottom_config *qtcb_config;
 struct zfcp_adapter *adapter;
 int retval;

 adapter = (struct zfcp_adapter *) scsi_host->hostdata[0];
 if (!(adapter->adapter_features & FSF_FEATURE_MEASUREMENT_DATA))
  return -EOPNOTSUPP;

 qtcb_config = kzalloc(sizeof(struct fsf_qtcb_bottom_config),
         GFP_KERNEL);
 if (!qtcb_config)
  return -ENOMEM;

 retval = zfcp_fsf_exchange_config_data_sync(adapter->qdio, qtcb_config);
 if (!retval)
  *stat_inf = qtcb_config->stat_info;

 kfree(qtcb_config);
 return retval;
}
