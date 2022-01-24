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
typedef  int /*<<< orphan*/  wr ;
typedef  union c2wr {int dummy; } c2wr ;
struct TYPE_2__ {scalar_t__ context; } ;
struct c2wr_init_req {TYPE_1__ hdr; } ;
struct c2_dev {scalar_t__ init; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWR_TERM ; 
 int /*<<< orphan*/  FUNC0 (struct c2wr_init_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct c2wr_init_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct c2_dev*,union c2wr*) ; 

__attribute__((used)) static void FUNC3(struct c2_dev *c2dev)
{
	struct c2wr_init_req wr;

	FUNC1(&wr, 0, sizeof(wr));
	FUNC0(&wr, CCWR_TERM);
	wr.hdr.context = 0;

	/* Post the init message */
	FUNC2(c2dev, (union c2wr *) & wr);
	c2dev->init = 0;

	return;
}