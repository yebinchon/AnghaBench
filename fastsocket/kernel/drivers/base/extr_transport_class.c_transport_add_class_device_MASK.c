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
struct transport_container {scalar_t__ statistics; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct attribute_container {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 struct transport_container* FUNC1 (struct attribute_container*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct attribute_container *cont,
				      struct device *dev,
				      struct device *classdev)
{
	int error = FUNC0(classdev);
	struct transport_container *tcont = 
		FUNC1(cont);

	if (!error && tcont->statistics)
		error = FUNC2(&classdev->kobj, tcont->statistics);

	return error;
}