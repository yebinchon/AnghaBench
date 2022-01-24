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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ loopback; int /*<<< orphan*/  clock_speed; } ;
struct mgsl_struct {scalar_t__ bus_type; TYPE_1__ params; } ;

/* Variables and functions */
 int BIT12 ; 
 int BIT13 ; 
 scalar_t__ MGSL_BUS_TYPE_ISA ; 
 int /*<<< orphan*/  PCR ; 
 int FUNC0 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgsl_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mgsl_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mgsl_struct*) ; 

__attribute__((used)) static void FUNC6( struct mgsl_struct *info )
{
	FUNC4( info );
	FUNC5( info );

	if (info->bus_type == MGSL_BUS_TYPE_ISA) {
		/* Enable INTEN (Port 6, Bit12) */
		/* This connects the IRQ request signal to the ISA bus */
		FUNC1(info, PCR, (u16)((FUNC0(info, PCR) | BIT13) & ~BIT12));
	}

	FUNC2(info, info->params.clock_speed);

	if (info->params.loopback)
		FUNC3(info,1);

}