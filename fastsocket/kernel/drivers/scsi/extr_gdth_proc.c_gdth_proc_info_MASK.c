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
struct Scsi_Host {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  gdth_ha_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char**,scalar_t__,int,struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct Scsi_Host*) ; 

int FUNC4(struct Scsi_Host *host, char *buffer,char **start,off_t offset,int length,   
                   int inout)
{
    gdth_ha_str *ha = FUNC3(host);

    FUNC0(("gdth_proc_info() length %d offs %d inout %d\n",
            length,(int)offset,inout));

    if (inout)
        return(FUNC2(buffer,length,host,ha));
    else
        return(FUNC1(buffer,start,offset,length,host,ha));
}