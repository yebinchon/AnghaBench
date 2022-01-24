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
struct ib_sa_query {int id; TYPE_1__* mad_buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int timeout_ms; struct ib_sa_query** context; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ib_sa_query*,int*) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  query_idr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ib_sa_query *query, int timeout_ms, gfp_t gfp_mask)
{
	unsigned long flags;
	int ret, id;

retry:
	if (!FUNC2(&query_idr, gfp_mask))
		return -ENOMEM;
	FUNC4(&idr_lock, flags);
	ret = FUNC1(&query_idr, query, &id);
	FUNC5(&idr_lock, flags);
	if (ret == -EAGAIN)
		goto retry;
	if (ret)
		return ret;

	query->mad_buf->timeout_ms  = timeout_ms;
	query->mad_buf->context[0] = query;
	query->id = id;

	ret = FUNC0(query->mad_buf, NULL);
	if (ret) {
		FUNC4(&idr_lock, flags);
		FUNC3(&query_idr, id);
		FUNC5(&idr_lock, flags);
	}

	/*
	 * It's not safe to dereference query any more, because the
	 * send may already have completed and freed the query in
	 * another context.
	 */
	return ret ? ret : id;
}