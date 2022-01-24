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
struct qla_hw_data {int /*<<< orphan*/  loop_id_map; } ;

/* Variables and functions */
 int BROADCAST ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int MANAGEMENT_SERVER ; 
 int SNS_FIRST_LOOP_ID ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct qla_hw_data *ha)
{
	int i;

	if (FUNC0(ha))
		return;

	for (i = 0; i < SNS_FIRST_LOOP_ID; i++)
		FUNC1(i, ha->loop_id_map);
	FUNC1(MANAGEMENT_SERVER, ha->loop_id_map);
	FUNC1(BROADCAST, ha->loop_id_map);
}