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
struct enic {int /*<<< orphan*/  netdev; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct enic *enic)
{
	int link_status = FUNC4(enic->vdev);
	int carrier_ok = FUNC2(enic->netdev);

	if (link_status && !carrier_ok) {
		FUNC0(enic->netdev, "Link UP\n");
		FUNC3(enic->netdev);
	} else if (!link_status && carrier_ok) {
		FUNC0(enic->netdev, "Link DOWN\n");
		FUNC1(enic->netdev);
	}
}