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
union oid_res_t {int /*<<< orphan*/  ptr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;
typedef  enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int OID_FLAG_TYPE ; 
 int OID_TYPE_U32 ; 
 TYPE_1__* isl_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,union oid_res_t*) ; 
 int /*<<< orphan*/  FUNC2 (int,union oid_res_t*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *ndev, struct iw_request_info *info,
		struct iw_point *dwrq, char *extra)
{
	union oid_res_t r;
	int rvalue;
	enum oid_num_t n = dwrq->flags;

	rvalue = FUNC1(FUNC3(ndev), n, 0, NULL, &r);
	dwrq->length = FUNC2(n, &r, extra);
	if ((isl_oid[n].flags & OID_FLAG_TYPE) != OID_TYPE_U32)
		FUNC0(r.ptr);
	return rvalue;
}