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

/* Variables and functions */
 char* DISPLAY_DIR_NAME ; 
 int PVC_NLINES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pvc_display_dir ; 
 char** pvc_linename ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;
	for (i = 0; i < PVC_NLINES; i++)
		FUNC1(pvc_linename[i], pvc_display_dir);
	FUNC1("scroll", pvc_display_dir);
	FUNC1(DISPLAY_DIR_NAME, NULL);

	FUNC0(&timer);
}