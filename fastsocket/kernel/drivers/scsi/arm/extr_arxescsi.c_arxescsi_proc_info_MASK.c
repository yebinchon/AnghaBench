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
struct arxescsi_info {int /*<<< orphan*/  info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  long off_t ;

/* Variables and functions */
 int EINVAL ; 
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct Scsi_Host *host, char *buffer, char **start, off_t offset, int length,
		   int inout)
{
	struct arxescsi_info *info;
	char *p = buffer;
	int pos;

	info = (struct arxescsi_info *)host->hostdata;
	if (inout == 1)
		return -EINVAL;

	p += FUNC3(p, "ARXE 16-bit SCSI driver v%s\n", VERSION);
	p += FUNC1(&info->info, p);
	p += FUNC2(&info->info, p);
	p += FUNC0(&info->info, p);

	*start = buffer + offset;
	pos = p - buffer - offset;
	if (pos > length)
		pos = length;

	return pos;
}