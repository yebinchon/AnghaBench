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
 int FUNC2 (struct ioc3*) ; 

__attribute__((used)) static inline int FUNC3(struct ioc3 *ioc3)
{
	int result;

	FUNC0(FUNC1(6, 13));
	result = FUNC2(ioc3);
	FUNC0(FUNC1(0, 100));
	FUNC2(ioc3);

	return result;
}