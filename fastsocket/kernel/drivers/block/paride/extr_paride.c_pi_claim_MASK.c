#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pardevice {int dummy; } ;
struct TYPE_3__ {int claimed; scalar_t__ pardev; int /*<<< orphan*/  parq; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(PIA * pi)
{
	if (pi->claimed)
		return;
	pi->claimed = 1;
	if (pi->pardev)
		FUNC1(pi->parq,
			   !FUNC0((struct pardevice *) pi->pardev));
}