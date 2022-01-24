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
struct fc_lport {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 struct fc_frame* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 

struct fc_frame *FUNC5(struct fc_lport *lp, size_t payload_len)
{
	struct fc_frame *fp;
	size_t fill;

	fill = payload_len % 4;
	if (fill != 0)
		fill = 4 - fill;
	fp = FUNC0(payload_len + fill);
	if (fp) {
		FUNC3((char *) FUNC2(fp) + payload_len, 0, fill);
		/* trim is OK, we just allocated it so there are no fragments */
		FUNC4(FUNC1(fp),
			 payload_len + sizeof(struct fc_frame_header));
	}
	return fp;
}