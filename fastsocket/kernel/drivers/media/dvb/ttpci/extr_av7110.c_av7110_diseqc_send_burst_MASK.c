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
struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int dummy; } ;
typedef  int /*<<< orphan*/  fe_sec_mini_cmd_t ;
struct TYPE_2__ {struct av7110* priv; } ;

/* Variables and functions */
 int FUNC0 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe,
				    fe_sec_mini_cmd_t minicmd)
{
	struct av7110* av7110 = fe->dvb->priv;

	return FUNC0(av7110, 0, NULL, minicmd);
}