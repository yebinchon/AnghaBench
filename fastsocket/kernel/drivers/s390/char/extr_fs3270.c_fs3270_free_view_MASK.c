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
struct raw3270_view {int dummy; } ;
struct fs3270 {int /*<<< orphan*/  init; scalar_t__ rdbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3270_view*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct raw3270_view *view)
{
	struct fs3270 *fp;

	fp = (struct fs3270 *) view;
	if (fp->rdbuf)
		FUNC0(fp->rdbuf);
	FUNC2(((struct fs3270 *) view)->init);
	FUNC1(view);
}