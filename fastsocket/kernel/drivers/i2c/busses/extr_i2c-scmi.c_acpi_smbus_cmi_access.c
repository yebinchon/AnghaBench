
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; int* block; } ;
struct TYPE_6__ {int pointer; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_5__ {union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_3__ integer; TYPE_1__ package; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dev; struct acpi_smbus_cmi* algo_data; } ;
struct acpi_smbus_cmi {int handle; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
struct TYPE_8__ {char* mt_sbr; char* mt_sbw; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned char ACPI_SMBUS_PRTCL_BLOCK_DATA ;
 unsigned char ACPI_SMBUS_PRTCL_BYTE ;
 unsigned char ACPI_SMBUS_PRTCL_BYTE_DATA ;
 unsigned char ACPI_SMBUS_PRTCL_QUICK ;
 unsigned char ACPI_SMBUS_PRTCL_READ ;
 unsigned char ACPI_SMBUS_PRTCL_WORD_DATA ;
 unsigned char ACPI_SMBUS_PRTCL_WRITE ;




 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_INFO ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int EPROTO ;
 int ETIMEDOUT ;

 int I2C_SMBUS_BLOCK_MAX ;



 char I2C_SMBUS_READ ;

 char I2C_SMBUS_WRITE ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_warn (int *,char*,int) ;
 int kfree (union acpi_object*) ;
 int memcpy (int ,int ,int) ;
 TYPE_4__ smbus_methods ;

__attribute__((used)) static int
acpi_smbus_cmi_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
     char read_write, u8 command, int size,
     union i2c_smbus_data *data)
{
 int result = 0;
 struct acpi_smbus_cmi *smbus_cmi = adap->algo_data;
 unsigned char protocol;
 acpi_status status = 0;
 struct acpi_object_list input;
 union acpi_object mt_params[5];
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 union acpi_object *pkg;
 char *method;
 int len = 0;

 dev_dbg(&adap->dev, "access size: %d %s\n", size,
  (read_write) ? "READ" : "WRITE");
 switch (size) {
 case 129:
  protocol = ACPI_SMBUS_PRTCL_QUICK;
  command = 0;
  if (read_write == I2C_SMBUS_WRITE) {
   mt_params[3].type = ACPI_TYPE_INTEGER;
   mt_params[3].integer.value = 0;
   mt_params[4].type = ACPI_TYPE_INTEGER;
   mt_params[4].integer.value = 0;
  }
  break;

 case 131:
  protocol = ACPI_SMBUS_PRTCL_BYTE;
  if (read_write == I2C_SMBUS_WRITE) {
   mt_params[3].type = ACPI_TYPE_INTEGER;
   mt_params[3].integer.value = 0;
   mt_params[4].type = ACPI_TYPE_INTEGER;
   mt_params[4].integer.value = 0;
  } else {
   command = 0;
  }
  break;

 case 130:
  protocol = ACPI_SMBUS_PRTCL_BYTE_DATA;
  if (read_write == I2C_SMBUS_WRITE) {
   mt_params[3].type = ACPI_TYPE_INTEGER;
   mt_params[3].integer.value = 1;
   mt_params[4].type = ACPI_TYPE_INTEGER;
   mt_params[4].integer.value = data->byte;
  }
  break;

 case 128:
  protocol = ACPI_SMBUS_PRTCL_WORD_DATA;
  if (read_write == I2C_SMBUS_WRITE) {
   mt_params[3].type = ACPI_TYPE_INTEGER;
   mt_params[3].integer.value = 2;
   mt_params[4].type = ACPI_TYPE_INTEGER;
   mt_params[4].integer.value = data->word;
  }
  break;

 case 132:
  protocol = ACPI_SMBUS_PRTCL_BLOCK_DATA;
  if (read_write == I2C_SMBUS_WRITE) {
   len = data->block[0];
   if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
    return -EINVAL;
   mt_params[3].type = ACPI_TYPE_INTEGER;
   mt_params[3].integer.value = len;
   mt_params[4].type = ACPI_TYPE_BUFFER;
   mt_params[4].buffer.pointer = data->block + 1;
  }
  break;

 default:
  dev_warn(&adap->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }

 if (read_write == I2C_SMBUS_READ) {
  protocol |= ACPI_SMBUS_PRTCL_READ;
  method = smbus_methods.mt_sbr;
  input.count = 3;
 } else {
  protocol |= ACPI_SMBUS_PRTCL_WRITE;
  method = smbus_methods.mt_sbw;
  input.count = 5;
 }

 input.pointer = mt_params;
 mt_params[0].type = ACPI_TYPE_INTEGER;
 mt_params[0].integer.value = protocol;
 mt_params[1].type = ACPI_TYPE_INTEGER;
 mt_params[1].integer.value = addr;
 mt_params[2].type = ACPI_TYPE_INTEGER;
 mt_params[2].integer.value = command;

 status = acpi_evaluate_object(smbus_cmi->handle, method, &input,
          &buffer);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "Evaluating %s: %i", method, status));
  return -EIO;
 }

 pkg = buffer.pointer;
 if (pkg && pkg->type == ACPI_TYPE_PACKAGE)
  obj = pkg->package.elements;
 else {
  ACPI_ERROR((AE_INFO, "Invalid argument type"));
  result = -EIO;
  goto out;
 }
 if (obj == ((void*)0) || obj->type != ACPI_TYPE_INTEGER) {
  ACPI_ERROR((AE_INFO, "Invalid argument type"));
  result = -EIO;
  goto out;
 }

 result = obj->integer.value;
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "%s return status: %i\n",
     method, result));

 switch (result) {
 case 134:
  result = 0;
  break;
 case 136:
  result = -EBUSY;
  goto out;
 case 133:
  result = -ETIMEDOUT;
  goto out;
 case 135:
  result = -ENXIO;
  goto out;
 default:
  result = -EIO;
  goto out;
 }

 if (read_write == I2C_SMBUS_WRITE || size == 129)
  goto out;

 obj = pkg->package.elements + 1;
 if (obj == ((void*)0) || obj->type != ACPI_TYPE_INTEGER) {
  ACPI_ERROR((AE_INFO, "Invalid argument type"));
  result = -EIO;
  goto out;
 }

 len = obj->integer.value;
 obj = pkg->package.elements + 2;
 switch (size) {
 case 131:
 case 130:
 case 128:
  if (obj == ((void*)0) || obj->type != ACPI_TYPE_INTEGER) {
   ACPI_ERROR((AE_INFO, "Invalid argument type"));
   result = -EIO;
   goto out;
  }
  if (len == 2)
   data->word = obj->integer.value;
  else
   data->byte = obj->integer.value;
  break;
 case 132:
  if (obj == ((void*)0) || obj->type != ACPI_TYPE_BUFFER) {
   ACPI_ERROR((AE_INFO, "Invalid argument type"));
   result = -EIO;
   goto out;
  }
  if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
   return -EPROTO;
  data->block[0] = len;
  memcpy(data->block + 1, obj->buffer.pointer, len);
  break;
 }

out:
 kfree(buffer.pointer);
 dev_dbg(&adap->dev, "Transaction status: %i\n", result);
 return result;
}
