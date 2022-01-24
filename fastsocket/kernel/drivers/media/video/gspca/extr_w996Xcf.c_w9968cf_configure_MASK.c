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
struct sd {int stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sd*,int,int) ; 

__attribute__((used)) static void FUNC1(struct sd *sd)
{
	FUNC0(sd, 0x00, 0xff00); /* power-down */
	FUNC0(sd, 0x00, 0xbf17); /* reset everything */
	FUNC0(sd, 0x00, 0xbf10); /* normal operation */
	FUNC0(sd, 0x01, 0x0010); /* serial bus, SDS high */
	FUNC0(sd, 0x01, 0x0000); /* serial bus, SDS low */
	FUNC0(sd, 0x01, 0x0010); /* ..high 'beep-beep' */
	FUNC0(sd, 0x01, 0x0030); /* Set sda scl to FSB mode */

	sd->stopped = 1;
}