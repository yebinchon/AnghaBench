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
struct transport_container {int dummy; } ;
struct transport_class {int /*<<< orphan*/  (* configure ) (struct transport_container*,struct device*,struct device*) ;} ;
struct device {int dummy; } ;
struct attribute_container {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 struct transport_container* FUNC0 (struct attribute_container*) ; 
 struct transport_class* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct transport_container*,struct device*,struct device*) ; 

__attribute__((used)) static int FUNC3(struct attribute_container *cont,
			       struct device *dev,
			       struct device *cdev)
{
	struct transport_class *tclass = FUNC1(cont->class);
	struct transport_container *tcont = FUNC0(cont);

	if (tclass->configure)
		tclass->configure(tcont, dev, cdev);

	return 0;
}