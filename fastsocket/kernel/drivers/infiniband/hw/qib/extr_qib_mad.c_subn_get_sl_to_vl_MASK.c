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
typedef  int /*<<< orphan*/  u8 ;
struct qib_ibport {int port_cap_flags; int* sl_to_vl; } ;
struct ib_smp {int /*<<< orphan*/  status; scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int IB_PORT_SL_MAP_SUP ; 
 int /*<<< orphan*/  IB_SMP_UNSUP_METHOD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ib_smp*) ; 
 struct qib_ibport* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_smp *smp, struct ib_device *ibdev,
			     u8 port)
{
	struct qib_ibport *ibp = FUNC3(ibdev, port);
	u8 *p = (u8 *) smp->data;
	unsigned i;

	FUNC1(smp->data, 0, sizeof(smp->data));

	if (!(ibp->port_cap_flags & IB_PORT_SL_MAP_SUP))
		smp->status |= IB_SMP_UNSUP_METHOD;
	else
		for (i = 0; i < FUNC0(ibp->sl_to_vl); i += 2)
			*p++ = (ibp->sl_to_vl[i] << 4) | ibp->sl_to_vl[i + 1];

	return FUNC2(smp);
}