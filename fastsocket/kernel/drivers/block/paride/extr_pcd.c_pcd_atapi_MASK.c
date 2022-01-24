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
struct pcd_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pcd_unit*,char*,int,char*) ; 
 int FUNC2 (struct pcd_unit*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcd_unit*,char*) ; 

__attribute__((used)) static int FUNC4(struct pcd_unit *cd, char *cmd, int dlen, char *buf, char *fun)
{
	int r;

	r = FUNC1(cd, cmd, dlen, fun);
	FUNC0(1);
	if (!r)
		r = FUNC2(cd, buf, fun);
	if (r)
		FUNC3(cd, fun);

	return r;
}