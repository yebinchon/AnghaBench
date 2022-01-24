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
struct msi_desc {int dummy; } ;
struct msi_attribute {int /*<<< orphan*/  (* show ) (struct msi_desc*,struct msi_attribute*,char*) ;} ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct msi_desc*,struct msi_attribute*,char*) ; 
 struct msi_attribute* FUNC1 (struct attribute*) ; 
 struct msi_desc* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
				 struct attribute *attr, char *buf)
{
	struct msi_attribute *attribute = FUNC1(attr);
	struct msi_desc *entry = FUNC2(kobj);

	if (!attribute->show)
		return -EIO;

	return attribute->show(entry, attribute, buf);
}