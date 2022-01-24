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
typedef  int u8 ;
struct qib_ibport {int port_cap_flags; int* sl_to_vl; } ;
struct ib_smp {int /*<<< orphan*/  status; scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int IB_PORT_SL_MAP_SUP ; 
 int /*<<< orphan*/  IB_SMP_UNSUP_METHOD ; 
 int /*<<< orphan*/  _QIB_EVENT_SL2VL_CHANGE_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_smp*) ; 
 int FUNC4 (struct ib_smp*,struct ib_device*,int) ; 
 struct qib_ibport* FUNC5 (struct ib_device*,int) ; 

__attribute__((used)) static int FUNC6(struct ib_smp *smp, struct ib_device *ibdev,
			     u8 port)
{
	struct qib_ibport *ibp = FUNC5(ibdev, port);
	u8 *p = (u8 *) smp->data;
	unsigned i;

	if (!(ibp->port_cap_flags & IB_PORT_SL_MAP_SUP)) {
		smp->status |= IB_SMP_UNSUP_METHOD;
		return FUNC3(smp);
	}

	for (i = 0; i < FUNC0(ibp->sl_to_vl); i += 2, p++) {
		ibp->sl_to_vl[i] = *p >> 4;
		ibp->sl_to_vl[i + 1] = *p & 0xF;
	}
	FUNC2(FUNC1(FUNC5(ibdev, port)),
			    _QIB_EVENT_SL2VL_CHANGE_BIT);

	return FUNC4(smp, ibdev, port);
}