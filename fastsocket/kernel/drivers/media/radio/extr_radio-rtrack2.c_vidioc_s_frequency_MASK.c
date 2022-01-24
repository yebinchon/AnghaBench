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
struct v4l2_frequency {int /*<<< orphan*/  frequency; } ;
struct rtrack2 {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtrack2*,int /*<<< orphan*/ ) ; 
 struct rtrack2* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct rtrack2 *rt = FUNC1(file);

	FUNC0(rt, f->frequency);
	return 0;
}