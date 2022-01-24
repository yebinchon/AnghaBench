#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dummy; } ;
typedef  int off_t ;
struct TYPE_8__ {size_t mode; TYPE_2__* dev; } ;
typedef  TYPE_3__ imm_struct ;
struct TYPE_7__ {TYPE_1__* port; } ;
struct TYPE_6__ {char* name; } ;

/* Variables and functions */
 char** IMM_MODE_STRING ; 
 char* IMM_VERSION ; 
 TYPE_3__* FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (TYPE_3__*,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct Scsi_Host *host, char *buffer, char **start,
			off_t offset, int length, int inout)
{
	imm_struct *dev = FUNC0(host);
	int len = 0;

	if (inout)
		return FUNC1(dev, buffer, length);

	len += FUNC2(buffer + len, "Version : %s\n", IMM_VERSION);
	len +=
	    FUNC2(buffer + len, "Parport : %s\n",
		    dev->dev->port->name);
	len +=
	    FUNC2(buffer + len, "Mode    : %s\n",
		    IMM_MODE_STRING[dev->mode]);

	/* Request for beyond end of buffer */
	if (offset > len)
		return 0;

	*start = buffer + offset;
	len -= offset;
	if (len > length)
		len = length;
	return len;
}