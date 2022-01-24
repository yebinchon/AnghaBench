#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct streamzap_ir {int sum; } ;
struct TYPE_4__ {int pulse; int duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int SZ_RESOLUTION ; 
 int FUNC1 (int) ; 
 TYPE_1__ rawir ; 
 int /*<<< orphan*/  FUNC2 (struct streamzap_ir*,TYPE_1__) ; 

__attribute__((used)) static void FUNC3(struct streamzap_ir *sz,
			       unsigned char value)
{
	FUNC0(rawir);

	rawir.pulse = false;
	rawir.duration = ((int) value) * SZ_RESOLUTION;
	rawir.duration += SZ_RESOLUTION / 2;
	sz->sum += rawir.duration;
	rawir.duration = FUNC1(rawir.duration);
	FUNC2(sz, rawir);
}