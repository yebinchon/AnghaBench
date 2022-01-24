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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pvc_mutex ; 
 int scroll_dir ; 
 int scroll_interval ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(char *page, char **start,
			     off_t off, int count,
			     int *eof, void *data)
{
	char *origpage = page;

	FUNC0(&pvc_mutex);
	page += FUNC2(page, "%d\n", scroll_dir * scroll_interval);
	FUNC1(&pvc_mutex);

	return page - origpage;
}