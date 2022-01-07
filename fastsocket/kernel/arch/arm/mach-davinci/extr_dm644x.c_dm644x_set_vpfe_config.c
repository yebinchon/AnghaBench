
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_config {int dummy; } ;
struct TYPE_3__ {struct vpfe_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 TYPE_2__ vpfe_capture_dev ;

void dm644x_set_vpfe_config(struct vpfe_config *cfg)
{
 vpfe_capture_dev.dev.platform_data = cfg;
}
