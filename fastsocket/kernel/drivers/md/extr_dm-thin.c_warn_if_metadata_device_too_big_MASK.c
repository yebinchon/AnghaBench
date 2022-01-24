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
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIN_METADATA_MAX_SECTORS ; 
 scalar_t__ THIN_METADATA_MAX_SECTORS_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*,char*) ; 
 scalar_t__ FUNC2 (struct block_device*) ; 

__attribute__((used)) static void FUNC3(struct block_device *bdev)
{
	sector_t metadata_dev_size = FUNC2(bdev);
	char buffer[BDEVNAME_SIZE];

	if (metadata_dev_size > THIN_METADATA_MAX_SECTORS_WARNING)
		FUNC0("Metadata device %s is larger than %u sectors: excess space will not be used.",
		       FUNC1(bdev, buffer), THIN_METADATA_MAX_SECTORS);
}