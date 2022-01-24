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
typedef  int /*<<< orphan*/  uint32_t ;
struct nouveau_therm {int dummy; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 struct nouveau_therm* FUNC0 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_therm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_therm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_therm*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_subdev *subdev)
{
	struct nouveau_therm *therm = FUNC0(subdev);
	uint32_t stat = FUNC2(therm, 0x1100);

	/* traitement */

	/* ack all IRQs */
	FUNC3(therm, 0x1100, 0x70000);

	FUNC1(therm, "THERM received an IRQ: stat = %x\n", stat);
}