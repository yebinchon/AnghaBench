#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union i2c_smbus_data {int byte; int word; int* block; } ;
struct TYPE_6__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_5__ {union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_3__ integer; TYPE_1__ package; } ;
typedef  int u8 ;
typedef  int u16 ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct acpi_smbus_cmi* algo_data; } ;
struct acpi_smbus_cmi {int /*<<< orphan*/  handle; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_8__ {char* mt_sbr; char* mt_sbw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char ACPI_SMBUS_PRTCL_BLOCK_DATA ; 
 unsigned char ACPI_SMBUS_PRTCL_BYTE ; 
 unsigned char ACPI_SMBUS_PRTCL_BYTE_DATA ; 
 unsigned char ACPI_SMBUS_PRTCL_QUICK ; 
 unsigned char ACPI_SMBUS_PRTCL_READ ; 
 unsigned char ACPI_SMBUS_PRTCL_WORD_DATA ; 
 unsigned char ACPI_SMBUS_PRTCL_WRITE ; 
#define  ACPI_SMBUS_STATUS_BUSY 136 
#define  ACPI_SMBUS_STATUS_DNAK 135 
#define  ACPI_SMBUS_STATUS_OK 134 
#define  ACPI_SMBUS_STATUS_TIMEOUT 133 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
#define  I2C_SMBUS_BLOCK_DATA 132 
 int I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BYTE 131 
#define  I2C_SMBUS_BYTE_DATA 130 
#define  I2C_SMBUS_QUICK 129 
 char I2C_SMBUS_READ ; 
#define  I2C_SMBUS_WORD_DATA 128 
 char I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__ smbus_methods ; 

__attribute__((used)) static int
FUNC8(struct i2c_adapter *adap, u16 addr, unsigned short flags,
		   char read_write, u8 command, int size,
		   union i2c_smbus_data *data)
{
	int result = 0;
	struct acpi_smbus_cmi *smbus_cmi = adap->algo_data;
	unsigned char protocol;
	acpi_status status = 0;
	struct acpi_object_list input;
	union acpi_object mt_params[5];
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	union acpi_object *pkg;
	char *method;
	int len = 0;

	FUNC4(&adap->dev, "access size: %d %s\n", size,
		(read_write) ? "READ" : "WRITE");
	switch (size) {
	case I2C_SMBUS_QUICK:
		protocol = ACPI_SMBUS_PRTCL_QUICK;
		command = 0;
		if (read_write == I2C_SMBUS_WRITE) {
			mt_params[3].type = ACPI_TYPE_INTEGER;
			mt_params[3].integer.value = 0;
			mt_params[4].type = ACPI_TYPE_INTEGER;
			mt_params[4].integer.value = 0;
		}
		break;

	case I2C_SMBUS_BYTE:
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

	case I2C_SMBUS_BYTE_DATA:
		protocol = ACPI_SMBUS_PRTCL_BYTE_DATA;
		if (read_write == I2C_SMBUS_WRITE) {
			mt_params[3].type = ACPI_TYPE_INTEGER;
			mt_params[3].integer.value = 1;
			mt_params[4].type = ACPI_TYPE_INTEGER;
			mt_params[4].integer.value = data->byte;
		}
		break;

	case I2C_SMBUS_WORD_DATA:
		protocol = ACPI_SMBUS_PRTCL_WORD_DATA;
		if (read_write == I2C_SMBUS_WRITE) {
			mt_params[3].type = ACPI_TYPE_INTEGER;
			mt_params[3].integer.value = 2;
			mt_params[4].type = ACPI_TYPE_INTEGER;
			mt_params[4].integer.value = data->word;
		}
		break;

	case I2C_SMBUS_BLOCK_DATA:
		protocol = ACPI_SMBUS_PRTCL_BLOCK_DATA;
		if (read_write == I2C_SMBUS_WRITE) {
			len = data->block[0];
			if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
				return -EINVAL;
			mt_params[3].type = ACPI_TYPE_INTEGER;
			mt_params[3].integer.value = len;
			mt_params[4].type = ACPI_TYPE_BUFFER;
			mt_params[4].buffer.pointer = *(data->block + 1);
		}
		break;

	default:
		FUNC5(&adap->dev, "Unsupported transaction %d\n", size);
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

	status = FUNC3(smbus_cmi->handle, method, &input,
				      &buffer);
	if (FUNC2(status)) {
		FUNC1((AE_INFO, "Evaluating %s: %i", method, status));
		return -EIO;
	}

	pkg = buffer.pointer;
	if (pkg && pkg->type == ACPI_TYPE_PACKAGE)
		obj = pkg->package.elements;
	else {
		FUNC1((AE_INFO, "Invalid argument type"));
		result = -EIO;
		goto out;
	}
	if (obj == NULL || obj->type != ACPI_TYPE_INTEGER) {
		FUNC1((AE_INFO, "Invalid argument type"));
		result = -EIO;
		goto out;
	}

	result = obj->integer.value;
	FUNC0((ACPI_DB_INFO, "%s return status: %i\n",
			  method, result));

	switch (result) {
	case ACPI_SMBUS_STATUS_OK:
		result = 0;
		break;
	case ACPI_SMBUS_STATUS_BUSY:
		result = -EBUSY;
		goto out;
	case ACPI_SMBUS_STATUS_TIMEOUT:
		result = -ETIMEDOUT;
		goto out;
	case ACPI_SMBUS_STATUS_DNAK:
		result = -ENXIO;
		goto out;
	default:
		result = -EIO;
		goto out;
	}

	if (read_write == I2C_SMBUS_WRITE || size == I2C_SMBUS_QUICK)
		goto out;

	obj = pkg->package.elements + 1;
	if (obj == NULL || obj->type != ACPI_TYPE_INTEGER) {
		FUNC1((AE_INFO, "Invalid argument type"));
		result = -EIO;
		goto out;
	}

	len = obj->integer.value;
	obj = pkg->package.elements + 2;
	switch (size) {
	case I2C_SMBUS_BYTE:
	case I2C_SMBUS_BYTE_DATA:
	case I2C_SMBUS_WORD_DATA:
		if (obj == NULL || obj->type != ACPI_TYPE_INTEGER) {
			FUNC1((AE_INFO, "Invalid argument type"));
			result = -EIO;
			goto out;
		}
		if (len == 2)
			data->word = obj->integer.value;
		else
			data->byte = obj->integer.value;
		break;
	case I2C_SMBUS_BLOCK_DATA:
		if (obj == NULL || obj->type != ACPI_TYPE_BUFFER) {
			FUNC1((AE_INFO, "Invalid argument type"));
			result = -EIO;
			goto out;
		}
		if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
			return -EPROTO;
		data->block[0] = len;
		FUNC7(*(data->block + 1), obj->buffer.pointer, len);
		break;
	}

out:
	FUNC6(buffer.pointer);
	FUNC4(&adap->dev, "Transaction status: %i\n", result);
	return result;
}