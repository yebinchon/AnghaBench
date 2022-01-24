#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  track_information_length; } ;
typedef  TYPE_1__ track_information ;
struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int quiet; int buflen; } ;
typedef  int __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  CGC_DATA_READ ; 
 int GPCMD_READ_TRACK_RZONE_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_command*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pktcdvd_device*,struct packet_command*) ; 

__attribute__((used)) static int FUNC3(struct pktcdvd_device *pd, __u16 track, __u8 type, track_information *ti)
{
	struct packet_command cgc;
	int ret;

	FUNC1(&cgc, ti, 8, CGC_DATA_READ);
	cgc.cmd[0] = GPCMD_READ_TRACK_RZONE_INFO;
	cgc.cmd[1] = type & 3;
	cgc.cmd[4] = (track & 0xff00) >> 8;
	cgc.cmd[5] = track & 0xff;
	cgc.cmd[8] = 8;
	cgc.quiet = 1;

	if ((ret = FUNC2(pd, &cgc)))
		return ret;

	cgc.buflen = FUNC0(ti->track_information_length) +
		     sizeof(ti->track_information_length);

	if (cgc.buflen > sizeof(track_information))
		cgc.buflen = sizeof(track_information);

	cgc.cmd[8] = cgc.buflen;
	return FUNC2(pd, &cgc);
}