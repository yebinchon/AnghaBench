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
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3*) ; 

__attribute__((used)) static inline void FUNC3(struct ioc3 *ioc3, int bit)
{
	if (bit)
		FUNC0(FUNC1(6, 110));
	else
		FUNC0(FUNC1(80, 30));

	FUNC2(ioc3);
}