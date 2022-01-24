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
struct enic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,struct enic*,int /*<<< orphan*/ ) ; 
 int PORT_SELF_VF ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  vnic_dev_deinit ; 

__attribute__((used)) static int FUNC3(struct enic *enic, int vf)
{
	int err;

	FUNC0(vf, err, enic, vnic_dev_deinit);
	if (err)
		return FUNC1(err);

	if (vf == PORT_SELF_VF)
		FUNC2(enic);

	return 0;
}