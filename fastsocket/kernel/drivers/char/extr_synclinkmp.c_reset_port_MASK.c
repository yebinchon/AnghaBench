#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ie2_value; scalar_t__ ie1_value; scalar_t__ ie0_value; int /*<<< orphan*/  serial_signals; scalar_t__ sca_base; } ;
typedef  TYPE_1__ SLMP_INFO ;

/* Variables and functions */
 scalar_t__ CHRESET ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  IE0 ; 
 int /*<<< orphan*/  IE1 ; 
 int /*<<< orphan*/  IE2 ; 
 int /*<<< orphan*/  SerialSignal_DTR ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(SLMP_INFO *info)
{
	if (info->sca_base) {

		FUNC2(info);
		FUNC0(info);

		info->serial_signals &= ~(SerialSignal_DTR + SerialSignal_RTS);
		FUNC1(info);

		/* disable all port interrupts */
		info->ie0_value = 0;
		info->ie1_value = 0;
		info->ie2_value = 0;
		FUNC3(info, IE0, info->ie0_value);
		FUNC3(info, IE1, info->ie1_value);
		FUNC3(info, IE2, info->ie2_value);

		FUNC3(info, CMD, CHRESET);
	}
}