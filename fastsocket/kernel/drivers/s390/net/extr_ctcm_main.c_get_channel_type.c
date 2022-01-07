
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device_id {scalar_t__ driver_info; } ;
typedef enum ctcm_channel_types { ____Placeholder_ctcm_channel_types } ctcm_channel_types ;


 int ctcm_channel_type_escon ;
 int ctcm_channel_type_ficon ;

__attribute__((used)) static enum ctcm_channel_types get_channel_type(struct ccw_device_id *id)
{
 enum ctcm_channel_types type;
 type = (enum ctcm_channel_types)id->driver_info;

 if (type == ctcm_channel_type_ficon)
  type = ctcm_channel_type_escon;

 return type;
}
