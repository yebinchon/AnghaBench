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
struct seq_file {int /*<<< orphan*/  private; } ;
typedef  void ipoib_mcast_iter ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *file, loff_t *pos)
{
	struct ipoib_mcast_iter *iter;
	loff_t n = *pos;

	iter = FUNC0(file->private);
	if (!iter)
		return NULL;

	while (n--) {
		if (FUNC1(iter)) {
			FUNC2(iter);
			return NULL;
		}
	}

	return iter;
}