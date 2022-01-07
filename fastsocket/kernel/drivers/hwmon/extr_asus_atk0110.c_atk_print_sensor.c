
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int pointer; } ;
union acpi_object {TYPE_3__ integer; TYPE_2__ string; } ;
struct device {int dummy; } ;
struct atk_data {TYPE_1__* acpi_dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int HWMON_PACK_ENABLE ;
 int HWMON_PACK_FLAGS ;
 int HWMON_PACK_LIMIT1 ;
 int HWMON_PACK_LIMIT2 ;
 int HWMON_PACK_NAME ;
 union acpi_object* atk_get_pack_member (struct atk_data*,union acpi_object*,int ) ;
 char* atk_sensor_type (union acpi_object*) ;
 int dev_dbg (struct device*,char*,char const*,scalar_t__,int ,scalar_t__,scalar_t__,char*) ;

__attribute__((used)) static void atk_print_sensor(struct atk_data *data, union acpi_object *obj)
{
}
