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
struct isci_orom {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  blob_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC2 (struct isci_orom*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct isci_orom *isci_orom)
{
	FILE *fd;
	int err;
	size_t count;

	fd = FUNC1(blob_name, "w+");
	if (!fd) {
		FUNC3("Open file for write failed");
		FUNC0(fd);
		return -EIO;
	}

	count = FUNC2(isci_orom, sizeof(struct isci_orom), 1, fd);
	if (count != 1) {
		FUNC3("Write data failed");
		FUNC0(fd);
		return -EIO;
	}

	FUNC0(fd);

	return 0;
}