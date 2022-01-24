#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  transfer ;
struct TYPE_2__ {size_t size; } ;
struct sst25l_flash {int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; TYPE_1__ mtd; } ;
struct spi_transfer {unsigned char* tx_buf; int len; unsigned char* rx_buf; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {int dummy; } ;
typedef  size_t loff_t ;
typedef  int /*<<< orphan*/  command ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char SST25L_CMD_READ ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int FUNC6 (struct sst25l_flash*) ; 
 struct sst25l_flash* FUNC7 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC8(struct mtd_info *mtd, loff_t from, size_t len,
		       size_t *retlen, unsigned char *buf)
{
	struct sst25l_flash *flash = FUNC7(mtd);
	struct spi_transfer transfer[2];
	struct spi_message message;
	unsigned char command[4];
	int ret;

	/* Sanity checking */
	if (len == 0)
		return 0;

	if (from + len > flash->mtd.size)
		return -EINVAL;

	if (retlen)
		*retlen = 0;

	FUNC4(&message);
	FUNC0(&transfer, 0, sizeof(transfer));

	command[0] = SST25L_CMD_READ;
	command[1] = from >> 16;
	command[2] = from >> 8;
	command[3] = from;

	transfer[0].tx_buf = command;
	transfer[0].len = sizeof(command);
	FUNC3(&transfer[0], &message);

	transfer[1].rx_buf = buf;
	transfer[1].len = len;
	FUNC3(&transfer[1], &message);

	FUNC1(&flash->lock);

	/* Wait for previous write/erase to complete */
	ret = FUNC6(flash);
	if (ret) {
		FUNC2(&flash->lock);
		return ret;
	}

	FUNC5(flash->spi, &message);

	if (retlen && message.actual_length > sizeof(command))
		*retlen += message.actual_length - sizeof(command);

	FUNC2(&flash->lock);
	return 0;
}