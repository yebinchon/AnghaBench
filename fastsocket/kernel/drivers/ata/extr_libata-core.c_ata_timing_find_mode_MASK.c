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
typedef  scalar_t__ u8 ;
struct ata_timing {scalar_t__ mode; } ;

/* Variables and functions */
 struct ata_timing* ata_timing ; 

const struct ata_timing *FUNC0(u8 xfer_mode)
{
	const struct ata_timing *t = ata_timing;

	while (xfer_mode > t->mode)
		t++;

	if (xfer_mode == t->mode)
		return t;
	return NULL;
}