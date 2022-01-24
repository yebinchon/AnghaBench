#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int driver_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; scalar_t__ platform_data; } ;
struct i2c_client {TYPE_4__ dev; int /*<<< orphan*/  name; scalar_t__ addr; int /*<<< orphan*/  adapter; } ;
struct at24_platform_data {int byte_len; int flags; int page_size; int /*<<< orphan*/ * context; int /*<<< orphan*/  (* setup ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  mode; } ;
struct TYPE_9__ {int size; TYPE_1__ attr; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct at24_data {int use_smbus; unsigned int num_addresses; unsigned int write_max; struct at24_data* writebuf; struct i2c_client** client; TYPE_3__ macc; TYPE_2__ bin; struct at24_platform_data chip; int /*<<< orphan*/  lock; } ;
typedef  int kernel_ulong_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AT24_FLAG_ADDR16 ; 
 int AT24_FLAG_IRUGO ; 
 int AT24_FLAG_READONLY ; 
 int AT24_FLAG_TAKE8ADDR ; 
 int AT24_SIZE_BYTELEN ; 
 int AT24_SIZE_FLAGS ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (int,int) ; 
 int EADDRINUSE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPFNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WRITE_I2C_BLOCK ; 
 unsigned int I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  S_IWUSR ; 
 int /*<<< orphan*/  at24_bin_read ; 
 int /*<<< orphan*/  at24_bin_write ; 
 int /*<<< orphan*/  at24_macc_read ; 
 int /*<<< orphan*/  at24_macc_write ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct at24_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 unsigned int io_limit ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct at24_data*) ; 
 struct at24_data* FUNC13 (unsigned int,int /*<<< orphan*/ ) ; 
 struct at24_data* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct at24_platform_data chip;
	bool writable;
	bool use_smbus = false;
	struct at24_data *at24;
	int err;
	unsigned i, num_addresses;
	kernel_ulong_t magic;

	if (client->dev.platform_data) {
		chip = *(struct at24_platform_data *)client->dev.platform_data;
	} else {
		if (!id->driver_data) {
			err = -ENODEV;
			goto err_out;
		}
		magic = id->driver_data;
		chip.byte_len = FUNC1(magic & FUNC0(AT24_SIZE_BYTELEN));
		magic >>= AT24_SIZE_BYTELEN;
		chip.flags = magic & FUNC0(AT24_SIZE_FLAGS);
		/*
		 * This is slow, but we can't know all eeproms, so we better
		 * play safe. Specifying custom eeprom-types via platform_data
		 * is recommended anyhow.
		 */
		chip.page_size = 1;

		chip.setup = NULL;
		chip.context = NULL;
	}

	if (!FUNC11(chip.byte_len))
		FUNC6(&client->dev,
			"byte_len looks suspicious (no power of 2)!\n");
	if (!FUNC11(chip.page_size))
		FUNC6(&client->dev,
			"page_size looks suspicious (no power of 2)!\n");

	/* Use I2C operations unless we're stuck with SMBus extensions. */
	if (!FUNC7(client->adapter, I2C_FUNC_I2C)) {
		if (chip.flags & AT24_FLAG_ADDR16) {
			err = -EPFNOSUPPORT;
			goto err_out;
		}
		if (!FUNC7(client->adapter,
				I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
			err = -EPFNOSUPPORT;
			goto err_out;
		}
		use_smbus = true;
	}

	if (chip.flags & AT24_FLAG_TAKE8ADDR)
		num_addresses = 8;
	else
		num_addresses =	FUNC2(chip.byte_len,
			(chip.flags & AT24_FLAG_ADDR16) ? 65536 : 256);

	at24 = FUNC14(sizeof(struct at24_data) +
		num_addresses * sizeof(struct i2c_client *), GFP_KERNEL);
	if (!at24) {
		err = -ENOMEM;
		goto err_out;
	}

	FUNC15(&at24->lock);
	at24->use_smbus = use_smbus;
	at24->chip = chip;
	at24->num_addresses = num_addresses;

	/*
	 * Export the EEPROM bytes through sysfs, since that's convenient.
	 * By default, only root should see the data (maybe passwords etc)
	 */
	at24->bin.attr.name = "eeprom";
	at24->bin.attr.mode = chip.flags & AT24_FLAG_IRUGO ? S_IRUGO : S_IRUSR;
	at24->bin.read = at24_bin_read;
	at24->bin.size = chip.byte_len;

	at24->macc.read = at24_macc_read;

	writable = !(chip.flags & AT24_FLAG_READONLY);
	if (writable) {
		if (!use_smbus || FUNC7(client->adapter,
				I2C_FUNC_SMBUS_WRITE_I2C_BLOCK)) {

			unsigned write_max = chip.page_size;

			at24->macc.write = at24_macc_write;

			at24->bin.write = at24_bin_write;
			at24->bin.attr.mode |= S_IWUSR;

			if (write_max > io_limit)
				write_max = io_limit;
			if (use_smbus && write_max > I2C_SMBUS_BLOCK_MAX)
				write_max = I2C_SMBUS_BLOCK_MAX;
			at24->write_max = write_max;

			/* buffer (data + address at the beginning) */
			at24->writebuf = FUNC13(write_max + 2, GFP_KERNEL);
			if (!at24->writebuf) {
				err = -ENOMEM;
				goto err_struct;
			}
		} else {
			FUNC6(&client->dev,
				"cannot write due to controller restrictions.");
		}
	}

	at24->client[0] = client;

	/* use dummy devices for multiple-address chips */
	for (i = 1; i < num_addresses; i++) {
		at24->client[i] = FUNC8(client->adapter,
					client->addr + i);
		if (!at24->client[i]) {
			FUNC4(&client->dev, "address 0x%02x unavailable\n",
					client->addr + i);
			err = -EADDRINUSE;
			goto err_clients;
		}
	}

	err = FUNC17(&client->dev.kobj, &at24->bin);
	if (err)
		goto err_clients;

	FUNC9(client, at24);

	FUNC5(&client->dev, "%zu byte %s EEPROM %s\n",
		at24->bin.size, client->name,
		writable ? "(writable)" : "(read-only)");
	FUNC3(&client->dev,
		"page_size %d, num_addresses %d, write_max %d%s\n",
		chip.page_size, num_addresses,
		at24->write_max,
		use_smbus ? ", use_smbus" : "");

	/* export data to kernel code */
	if (chip.setup)
		chip.setup(&at24->macc, chip.context);

	return 0;

err_clients:
	for (i = 1; i < num_addresses; i++)
		if (at24->client[i])
			FUNC10(at24->client[i]);

	FUNC12(at24->writebuf);
err_struct:
	FUNC12(at24);
err_out:
	FUNC3(&client->dev, "probe error %d\n", err);
	return err;
}