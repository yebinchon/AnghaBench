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
struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct NCR5380_hostdata {scalar_t__ disconnected_queue; scalar_t__ issue_queue; scalar_t__ connected; } ;
typedef  long off_t ;

/* Variables and functions */
 int ENOSYS ; 
 char* HOSTNO ; 
 char* NCR5380_PUBLIC_RELEASE ; 
 struct scsi_cmnd* FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 char* FUNC5 (struct scsi_cmnd*,char*,char*,int) ; 
 scalar_t__ main_running ; 

__attribute__((used)) static int FUNC6(struct Scsi_Host *instance, char *buffer,
			     char **start, off_t offset, int length, int inout)
{
    char *pos = buffer;
    struct NCR5380_hostdata *hostdata;
    struct scsi_cmnd *ptr;
    unsigned long flags;
    off_t begin = 0;
#define check_offset()				\
    do {					\
	if (pos - buffer < offset - begin) {	\
	    begin += pos - buffer;		\
	    pos = buffer;			\
	}					\
    } while (0)

    hostdata = (struct NCR5380_hostdata *)instance->hostdata;

    if (inout) { /* Has data been written to the file ? */
	return(-ENOSYS);  /* Currently this is a no-op */
    }
    FUNC1("NCR5380 core release=%d.\n", NCR5380_PUBLIC_RELEASE);
    check_offset();
    FUNC4(flags);
    FUNC1("NCR5380: coroutine is%s running.\n", main_running ? "" : "n't");
    check_offset();
    if (!hostdata->connected)
	FUNC1("scsi%d: no currently connected command\n", HOSTNO);
    else
	pos = FUNC5 ((struct scsi_cmnd *) hostdata->connected,
				pos, buffer, length);
    FUNC1("scsi%d: issue_queue\n", HOSTNO);
    check_offset();
    for (ptr = (struct scsi_cmnd *) hostdata->issue_queue; ptr; ptr = FUNC0(ptr))
    {
	pos = FUNC5 (ptr, pos, buffer, length);
	check_offset();
    }

    FUNC1("scsi%d: disconnected_queue\n", HOSTNO);
    check_offset();
    for (ptr = (struct scsi_cmnd *) hostdata->disconnected_queue; ptr;
	 ptr = FUNC0(ptr)) {
	pos = FUNC5 (ptr, pos, buffer, length);
	check_offset();
    }

    FUNC3(flags);
    *start = buffer + (offset - begin);
    if (pos - buffer < offset - begin)
	return 0;
    else if (pos - buffer - (offset - begin) < length)
	return pos - buffer - (offset - begin);
    return length;
}