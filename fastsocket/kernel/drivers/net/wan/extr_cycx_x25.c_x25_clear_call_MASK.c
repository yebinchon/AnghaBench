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
typedef  int u8 ;
struct cycx_device {int dummy; } ;
typedef  int /*<<< orphan*/  d ;

/* Variables and functions */
 int /*<<< orphan*/  X25_DISCONNECT_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cycx_device*,int /*<<< orphan*/ ,int,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cycx_device *card, u8 link, u8 lcn, u8 cause,
			  u8 diagn)
{
	u8 d[7];

	FUNC0(d, 0, sizeof(d));
	d[0] = d[3] = lcn;
	d[2] = 0x10;
	d[4] = 0x13;
	d[5] = cause;
	d[6] = diagn;

	return FUNC1(card, X25_DISCONNECT_REQUEST, link, d, 7, NULL, 0);
}