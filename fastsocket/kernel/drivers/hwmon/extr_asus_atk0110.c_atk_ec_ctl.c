
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
struct device {int dummy; } ;
struct atk_data {TYPE_2__* acpi_dev; } ;
struct atk_acpi_ret_buffer {scalar_t__ flags; } ;
struct atk_acpi_input_buf {int param1; scalar_t__ param2; int id; } ;
struct TYPE_4__ {struct device dev; } ;


 int ACPI_FREE (union acpi_object*) ;
 int ATK_EC_ID ;
 int EIO ;
 scalar_t__ IS_ERR (union acpi_object*) ;
 int PTR_ERR (union acpi_object*) ;
 union acpi_object* atk_sitm (struct atk_data*,struct atk_acpi_input_buf*) ;
 int dev_err (struct device*,char*,char*) ;
 int dev_info (struct device*,char*,char*) ;

__attribute__((used)) static int atk_ec_ctl(struct atk_data *data, int enable)
{
 struct device *dev = &data->acpi_dev->dev;
 union acpi_object *obj;
 struct atk_acpi_input_buf sitm;
 struct atk_acpi_ret_buffer *ec_ret;
 int err = 0;

 sitm.id = ATK_EC_ID;
 sitm.param1 = enable;
 sitm.param2 = 0;

 obj = atk_sitm(data, &sitm);
 if (IS_ERR(obj)) {
  dev_err(dev, "Failed to %sable the EC\n",
    enable ? "en" : "dis");
  return PTR_ERR(obj);
 }
 ec_ret = (struct atk_acpi_ret_buffer *)obj->buffer.pointer;
 if (ec_ret->flags == 0) {
  dev_err(dev, "Failed to %sable the EC\n",
    enable ? "en" : "dis");
  err = -EIO;
 } else {
  dev_info(dev, "EC %sabled\n",
    enable ? "en" : "dis");
 }

 ACPI_FREE(obj);
 return err;
}
