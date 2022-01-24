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
struct tea5764_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tea5764_device*,int) ; 

__attribute__((used)) static void FUNC3(struct tea5764_device *radio, int freq)
{
	FUNC2(radio, freq);
	if (FUNC1(radio))
		FUNC0("Could not set frequency!");
}