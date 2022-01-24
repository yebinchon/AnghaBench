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
struct nvbios_init {TYPE_1__* outp; int /*<<< orphan*/  bios; } ;
struct nouveau_i2c_port {int dummy; } ;
struct nouveau_i2c {struct nouveau_i2c_port* (* find ) (struct nouveau_i2c*,int) ;struct nouveau_i2c_port* (* find_type ) (struct nouveau_i2c*,int) ;} ;
struct TYPE_2__ {int i2c_index; int /*<<< orphan*/  extdev; scalar_t__ location; scalar_t__ i2c_upper_default; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct nouveau_i2c* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nouveau_i2c_port* FUNC4 (struct nouveau_i2c*,int) ; 
 struct nouveau_i2c_port* FUNC5 (struct nouveau_i2c*,int) ; 

__attribute__((used)) static struct nouveau_i2c_port *
FUNC6(struct nvbios_init *init, int index)
{
	struct nouveau_i2c *i2c = FUNC3(init->bios);

	if (index == 0xff) {
		index = FUNC0(0);
		if (init->outp && init->outp->i2c_upper_default)
			index = FUNC0(1);
	} else
	if (index < 0) {
		if (!init->outp) {
			FUNC2("script needs output for i2c\n");
			return NULL;
		}

		if (index == -2 && init->outp->location) {
			index = FUNC1(init->outp->extdev);
			return i2c->find_type(i2c, index);
		}

		index = init->outp->i2c_index;
	}

	return i2c->find(i2c, index);
}