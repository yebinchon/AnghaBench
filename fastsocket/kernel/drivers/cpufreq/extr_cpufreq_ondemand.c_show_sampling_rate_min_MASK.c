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
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int min_sampling_rate ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct kobject *kobj,
				      struct attribute *attr, char *buf)
{
	return FUNC0(buf, "%u\n", min_sampling_rate);
}