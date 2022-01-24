#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct packet_command {int* cmd; int quiet; } ;
struct media_event_desc {int dummy; } ;
struct event_header {int notification_class; scalar_t__ nea; int /*<<< orphan*/  data_len; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {scalar_t__ (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CGC_DATA_READ ; 
 int GPCMD_GET_EVENT_STATUS_NOTIFICATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_command*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct media_event_desc*,unsigned char*,int) ; 
 scalar_t__ FUNC3 (struct cdrom_device_info*,struct packet_command*) ; 

int FUNC4(struct cdrom_device_info *cdi,
			  struct media_event_desc *med)
{
	struct packet_command cgc;
	unsigned char buffer[8];
	struct event_header *eh = (struct event_header *) buffer;

	FUNC1(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);
	cgc.cmd[0] = GPCMD_GET_EVENT_STATUS_NOTIFICATION;
	cgc.cmd[1] = 1;		/* IMMED */
	cgc.cmd[4] = 1 << 4;	/* media event */
	cgc.cmd[8] = sizeof(buffer);
	cgc.quiet = 1;

	if (cdi->ops->generic_packet(cdi, &cgc))
		return 1;

	if (FUNC0(eh->data_len) < sizeof(*med))
		return 1;

	if (eh->nea || eh->notification_class != 0x4)
		return 1;

	FUNC2(med, &buffer[sizeof(*eh)], sizeof(*med));
	return 0;
}