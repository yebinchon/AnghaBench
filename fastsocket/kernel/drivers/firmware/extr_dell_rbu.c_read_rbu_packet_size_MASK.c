#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  packetsize; } ;

/* Variables and functions */
 TYPE_1__ rbu_data ; 
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct file *filp, struct kobject *kobj,
				    struct bin_attribute *bin_attr,
				    char *buffer, loff_t pos, size_t count)
{
	int size = 0;
	if (!pos) {
		FUNC1(&rbu_data.lock);
		size = FUNC0(buffer, count, "%lu\n", rbu_data.packetsize);
		FUNC2(&rbu_data.lock);
	}
	return size;
}