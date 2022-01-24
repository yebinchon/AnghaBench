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
struct cb_data {int (* fn_known_sch ) (struct subchannel*,void*) ;int (* fn_unknown_sch ) (struct subchannel_id,void*) ;int /*<<< orphan*/  set; void* data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  call_fn_all_sch ; 
 int /*<<< orphan*/  call_fn_known_sch ; 
 int /*<<< orphan*/  call_fn_unknown_sch ; 
 int /*<<< orphan*/  css_bus_type ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cb_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int (*fn_known)(struct subchannel *, void *),
			       int (*fn_unknown)(struct subchannel_id,
			       void *), void *data)
{
	struct cb_data cb;
	int rc;

	cb.data = data;
	cb.fn_known_sch = fn_known;
	cb.fn_unknown_sch = fn_unknown;

	cb.set = FUNC4();
	if (!cb.set)
		/* fall back to brute force scanning in case of oom */
		return FUNC1(call_fn_all_sch, &cb);

	FUNC2(cb.set);

	/* Process registered subchannels. */
	rc = FUNC0(&css_bus_type, NULL, &cb, call_fn_known_sch);
	if (rc)
		goto out;
	/* Process unregistered subchannels. */
	if (fn_unknown)
		rc = FUNC1(call_fn_unknown_sch, &cb);
out:
	FUNC3(cb.set);

	return rc;
}