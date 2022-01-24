#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* bootblock_quadwords; scalar_t__ bootblock_checksum; int /*<<< orphan*/  bootblock_label; } ;
typedef  TYPE_1__ bootblock ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,long,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (int,TYPE_1__*,int) ; 

int FUNC8(int argc, char ** argv)
{
    bootblock		bootblock_from_disk;
    bootblock		bootloader_image;
    int			dev, fd;
    int			i;
    int			nread;

    /* Make sure of the arg count */
    if(argc != 3) {
	FUNC2(stderr, "Usage: %s device lxboot\n", argv[0]);
	FUNC1(0);
    }

    /* First, open the device and make sure it's accessible */
    dev = FUNC4(argv[1], O_RDWR);
    if(dev < 0) {
	FUNC5(argv[1]);
	FUNC1(0);
    }

    /* Now open the lxboot and make sure it's reasonable */
    fd = FUNC4(argv[2], O_RDONLY);
    if(fd < 0) {
	FUNC5(argv[2]);
	FUNC0(dev);
	FUNC1(0);
    }

    /* Read in the lxboot */
    nread = FUNC6(fd, &bootloader_image, sizeof(bootblock));
    if(nread != sizeof(bootblock)) {
	FUNC5("lxboot read");
	FUNC2(stderr, "expected %zd, got %d\n", sizeof(bootblock), nread);
	FUNC1(0);
    }

    /* Read in the bootblock from disk. */
    nread = FUNC6(dev, &bootblock_from_disk, sizeof(bootblock));
    if(nread != sizeof(bootblock)) {
	FUNC5("bootblock read");
	FUNC2(stderr, "expected %zd, got %d\n", sizeof(bootblock), nread);
	FUNC1(0);
    }

    /* Swap the bootblock's disklabel into the bootloader */
    bootloader_image.bootblock_label = bootblock_from_disk.bootblock_label;

    /* Calculate the bootblock checksum */
    bootloader_image.bootblock_checksum = 0;
    for(i = 0; i < 63; i++) {
	bootloader_image.bootblock_checksum += 
			bootloader_image.bootblock_quadwords[i];
    }

    /* Write the whole thing out! */
    FUNC3(dev, 0L, SEEK_SET);
    if(FUNC7(dev, &bootloader_image, sizeof(bootblock)) != sizeof(bootblock)) {
	FUNC5("bootblock write");
	FUNC1(0);
    }

    FUNC0(fd);
    FUNC0(dev);
    FUNC1(0);
}