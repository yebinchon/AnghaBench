
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef int u64 ;
struct device {int dummy; } ;
struct atk_sensor_data {int id; struct atk_data* data; } ;
struct atk_data {TYPE_2__* acpi_dev; } ;
struct atk_acpi_ret_buffer {scalar_t__ flags; int value; } ;
struct TYPE_4__ {struct device dev; } ;


 int ACPI_FREE (union acpi_object*) ;
 int EIO ;
 scalar_t__ IS_ERR (union acpi_object*) ;
 int PTR_ERR (union acpi_object*) ;
 union acpi_object* atk_gitm (struct atk_data*,int ) ;
 int dev_warn (struct device*,char*,int ) ;

__attribute__((used)) static int atk_read_value_new(struct atk_sensor_data *sensor, u64 *value)
{
 struct atk_data *data = sensor->data;
 struct device *dev = &data->acpi_dev->dev;
 union acpi_object *obj;
 struct atk_acpi_ret_buffer *buf;
 int err = 0;

 obj = atk_gitm(data, sensor->id);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 buf = (struct atk_acpi_ret_buffer *)obj->buffer.pointer;
 if (buf->flags == 0) {




  dev_warn(dev, "Read failed, sensor = %#llx\n", sensor->id);
  err = -EIO;
  goto out;
 }

 *value = buf->value;
out:
 ACPI_FREE(obj);
 return err;
}
