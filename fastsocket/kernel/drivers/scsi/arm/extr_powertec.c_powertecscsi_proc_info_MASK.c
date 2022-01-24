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
struct powertec_info {int /*<<< orphan*/  info; scalar_t__ term_ctl; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  long off_t ;

/* Variables and functions */
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct Scsi_Host*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

int FUNC5(struct Scsi_Host *host, char *buffer, char **start, off_t offset,
			    int length, int inout)
{
	struct powertec_info *info;
	char *p = buffer;
	int pos;

	if (inout == 1)
		return FUNC3(host, buffer, length);

	info = (struct powertec_info *)host->hostdata;

	p += FUNC4(p, "PowerTec SCSI driver v%s\n", VERSION);
	p += FUNC1(&info->info, p);
	p += FUNC4(p, "Term    : o%s\n",
			info->term_ctl ? "n" : "ff");

	p += FUNC2(&info->info, p);
	p += FUNC0(&info->info, p);

	*start = buffer + offset;
	pos = p - buffer - offset;
	if (pos > length)
		pos = length;

	return pos;
}