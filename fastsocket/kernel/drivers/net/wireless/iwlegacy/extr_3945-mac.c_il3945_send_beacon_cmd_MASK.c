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
typedef  int /*<<< orphan*/  u8 ;
struct il_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cmd; } ;
struct il3945_frame {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_TX_BEACON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,struct il3945_frame*) ; 
 struct il3945_frame* FUNC2 (struct il_priv*) ; 
 unsigned int FUNC3 (struct il_priv*,struct il3945_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int FUNC5 (struct il_priv*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il)
{
	struct il3945_frame *frame;
	unsigned int frame_size;
	int rc;
	u8 rate;

	frame = FUNC2(il);

	if (!frame) {
		FUNC0("Could not obtain free frame buffer for beacon "
		       "command.\n");
		return -ENOMEM;
	}

	rate = FUNC4(il);

	frame_size = FUNC3(il, frame, rate);

	rc = FUNC5(il, C_TX_BEACON, frame_size, &frame->u.cmd[0]);

	FUNC1(il, frame);

	return rc;
}