
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcp_plat_data {int dummy; } ;
struct TYPE_3__ {struct mcp_plat_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 TYPE_2__ sa11x0mcp_device ;

void sa11x0_set_mcp_data(struct mcp_plat_data *data)
{
 sa11x0mcp_device.dev.platform_data = data;
}
