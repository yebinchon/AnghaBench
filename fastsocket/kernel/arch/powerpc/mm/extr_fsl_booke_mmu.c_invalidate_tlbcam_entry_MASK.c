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
struct TYPE_2__ {int MAS0; int /*<<< orphan*/  MAS1; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MAS1_VALID ; 
 TYPE_1__* TLBCAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(int index)
{
	TLBCAM[index].MAS0 = FUNC1(1) | FUNC0(index);
	TLBCAM[index].MAS1 = ~MAS1_VALID;

	FUNC2(index);
}