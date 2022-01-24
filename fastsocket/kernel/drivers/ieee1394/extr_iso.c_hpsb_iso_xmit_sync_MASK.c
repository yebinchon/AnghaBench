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
struct hpsb_iso {scalar_t__ type; scalar_t__ buf_packets; int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HPSB_ISO_XMIT ; 
 scalar_t__ FUNC0 (struct hpsb_iso*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct hpsb_iso *iso)
{
	if (iso->type != HPSB_ISO_XMIT)
		return -EINVAL;

	return FUNC1(iso->waitq,
					FUNC0(iso) ==
					iso->buf_packets);
}