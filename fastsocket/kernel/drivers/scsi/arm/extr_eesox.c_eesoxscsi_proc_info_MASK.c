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
struct eesoxscsi_info {int control; int /*<<< orphan*/  info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  long off_t ;

/* Variables and functions */
 int EESOX_TERM_ENABLE ; 
 char* VERSION ; 
 int FUNC0 (struct Scsi_Host*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

int FUNC5(struct Scsi_Host *host, char *buffer, char **start, off_t offset,
			    int length, int inout)
{
	struct eesoxscsi_info *info;
	char *p = buffer;
	int pos;

	if (inout == 1)
		return FUNC0(host, buffer, length);

	info = (struct eesoxscsi_info *)host->hostdata;

	p += FUNC4(p, "EESOX SCSI driver v%s\n", VERSION);
	p += FUNC2(&info->info, p);
	p += FUNC4(p, "Term    : o%s\n",
			info->control & EESOX_TERM_ENABLE ? "n" : "ff");

	p += FUNC3(&info->info, p);
	p += FUNC1(&info->info, p);

	*start = buffer + offset;
	pos = p - buffer - offset;
	if (pos > length)
		pos = length;

	return pos;
}