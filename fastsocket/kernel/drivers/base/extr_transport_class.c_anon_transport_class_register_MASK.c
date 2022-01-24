#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* remove; void* setup; int /*<<< orphan*/  class; } ;
struct TYPE_5__ {int /*<<< orphan*/ * class; } ;
struct anon_transport_class {TYPE_1__ tclass; TYPE_2__ container; } ;

/* Variables and functions */
 void* anon_transport_dummy_function ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(struct anon_transport_class *atc)
{
	int error;
	atc->container.class = &atc->tclass.class;
	FUNC1(&atc->container);
	error = FUNC0(&atc->container);
	if (error)
		return error;
	atc->tclass.setup = anon_transport_dummy_function;
	atc->tclass.remove = anon_transport_dummy_function;
	return 0;
}