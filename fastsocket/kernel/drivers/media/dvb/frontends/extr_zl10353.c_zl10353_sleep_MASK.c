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
typedef  int /*<<< orphan*/  zl10353_softdown ;
typedef  int u8 ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe)
{
	static u8 zl10353_softdown[] = { 0x50, 0x0C, 0x44 };

	FUNC0(fe, zl10353_softdown, sizeof(zl10353_softdown));
	return 0;
}