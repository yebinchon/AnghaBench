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
struct pvr2_ioread {scalar_t__ c_data_len; scalar_t__ c_data_offs; int /*<<< orphan*/ * c_buf; int /*<<< orphan*/ ** buffer_storage; int /*<<< orphan*/ * c_data_ptr; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_DATA_FLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pvr2_ioread*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct pvr2_ioread*,int) ; 

__attribute__((used)) static int FUNC7(struct pvr2_ioread *cp)
{
	int stat;

	while (cp->c_data_len <= cp->c_data_offs) {
		if (cp->c_buf) {
			// Flush out current buffer first.
			stat = FUNC3(cp->c_buf);
			if (stat < 0) {
				// Streaming error...
				FUNC6(PVR2_TRACE_DATA_FLOW,
					   "/*---TRACE_READ---*/"
					   " pvr2_ioread_read id=%p"
					   " queue_error=%d",
					   cp,stat);
				FUNC4(cp);
				return 0;
			}
			cp->c_buf = NULL;
			cp->c_data_ptr = NULL;
			cp->c_data_len = 0;
			cp->c_data_offs = 0;
		}
		// Now get a freshly filled buffer.
		cp->c_buf = FUNC5(cp->stream);
		if (!cp->c_buf) break; // Nothing ready; done.
		cp->c_data_len = FUNC0(cp->c_buf);
		if (!cp->c_data_len) {
			// Nothing transferred.  Was there an error?
			stat = FUNC2(cp->c_buf);
			if (stat < 0) {
				// Streaming error...
				FUNC6(PVR2_TRACE_DATA_FLOW,
					   "/*---TRACE_READ---*/"
					   " pvr2_ioread_read id=%p"
					   " buffer_error=%d",
					   cp,stat);
				FUNC4(cp);
				// Give up.
				return 0;
			}
			// Start over...
			continue;
		}
		cp->c_data_offs = 0;
		cp->c_data_ptr = cp->buffer_storage[
			FUNC1(cp->c_buf)];
	}
	return !0;
}