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
struct request_sense {int dummy; } ;
struct gendisk {int dummy; } ;
struct cdrom_info {int /*<<< orphan*/  drive; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdrom_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_sense*) ; 
 struct cdrom_info* FUNC1 (struct gendisk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gendisk *disk)
{
	struct cdrom_info *info = FUNC1(disk, cdrom_info);
	struct request_sense sense;

	FUNC0(info->drive, &sense);

	return  0;
}