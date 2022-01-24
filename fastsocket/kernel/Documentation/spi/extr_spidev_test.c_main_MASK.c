#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SPI_IOC_RD_BITS_PER_WORD ; 
 int /*<<< orphan*/  SPI_IOC_RD_MAX_SPEED_HZ ; 
 int /*<<< orphan*/  SPI_IOC_RD_MODE ; 
 int /*<<< orphan*/  SPI_IOC_WR_BITS_PER_WORD ; 
 int /*<<< orphan*/  SPI_IOC_WR_MAX_SPEED_HZ ; 
 int /*<<< orphan*/  SPI_IOC_WR_MODE ; 
 int bits ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  device ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int mode ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int speed ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(int argc, char *argv[])
{
	int ret = 0;
	int fd;

	FUNC4(argc, argv);

	fd = FUNC2(device, O_RDWR);
	if (fd < 0)
		FUNC3("can't open device");

	/*
	 * spi mode
	 */
	ret = FUNC1(fd, SPI_IOC_WR_MODE, &mode);
	if (ret == -1)
		FUNC3("can't set spi mode");

	ret = FUNC1(fd, SPI_IOC_RD_MODE, &mode);
	if (ret == -1)
		FUNC3("can't get spi mode");

	/*
	 * bits per word
	 */
	ret = FUNC1(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
	if (ret == -1)
		FUNC3("can't set bits per word");

	ret = FUNC1(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
	if (ret == -1)
		FUNC3("can't get bits per word");

	/*
	 * max speed hz
	 */
	ret = FUNC1(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
	if (ret == -1)
		FUNC3("can't set max speed hz");

	ret = FUNC1(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
	if (ret == -1)
		FUNC3("can't get max speed hz");

	FUNC5("spi mode: %d\n", mode);
	FUNC5("bits per word: %d\n", bits);
	FUNC5("max speed: %d Hz (%d KHz)\n", speed, speed/1000);

	FUNC6(fd);

	FUNC0(fd);

	return ret;
}