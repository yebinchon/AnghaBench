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
typedef  int /*<<< orphan*/  u8 ;
struct psmouse {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct psmouse*,int) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, int addr,
				       u8 value)
{
	if (FUNC1(psmouse, addr))
		return -1;
	return FUNC0(psmouse, value);
}