#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct packet_command {int* cmd; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {struct cdrom_device_ops* ops; } ;
struct TYPE_4__ {int agid; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int type; TYPE_1__ disckey; } ;
typedef  TYPE_2__ dvd_struct ;

/* Variables and functions */
 int /*<<< orphan*/  CGC_DATA_READ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPCMD_READ_DVD_STRUCTURE ; 
 int /*<<< orphan*/  FUNC0 (struct packet_command*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cdrom_device_info*,struct packet_command*) ; 

__attribute__((used)) static int FUNC5(struct cdrom_device_info *cdi, dvd_struct *s,
				struct packet_command *cgc)
{
	int ret, size;
	u_char *buf;
	struct cdrom_device_ops *cdo = cdi->ops;

	size = sizeof(s->disckey.value) + 4;

	buf = FUNC2(size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC0(cgc, buf, size, CGC_DATA_READ);
	cgc->cmd[0] = GPCMD_READ_DVD_STRUCTURE;
	cgc->cmd[7] = s->type;
	cgc->cmd[8] = size >> 8;
	cgc->cmd[9] = size & 0xff;
	cgc->cmd[10] = s->disckey.agid << 6;

	ret = cdo->generic_packet(cdi, cgc);
	if (!ret)
		FUNC3(s->disckey.value, &buf[4], sizeof(s->disckey.value));

	FUNC1(buf);
	return ret;
}