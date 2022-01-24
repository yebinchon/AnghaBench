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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * func; } ;
struct nv50_i2c_port {int state; int /*<<< orphan*/  addr; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct dcb_i2c_entry {size_t drive; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  nouveau_i2c_bit_algo ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nv50_i2c_port**) ; 
 int /*<<< orphan*/ * nv50_i2c_addr ; 
 size_t nv50_i2c_addr_nr ; 
 int /*<<< orphan*/  nv50_i2c_func ; 
 struct nouveau_object* FUNC1 (struct nv50_i2c_port*) ; 

__attribute__((used)) static int
FUNC2(struct nouveau_object *parent, struct nouveau_object *engine,
		   struct nouveau_oclass *oclass, void *data, u32 index,
		   struct nouveau_object **pobject)
{
	struct dcb_i2c_entry *info = data;
	struct nv50_i2c_port *port;
	int ret;

	ret = FUNC0(parent, engine, oclass, index,
				     &nouveau_i2c_bit_algo, &port);
	*pobject = FUNC1(port);
	if (ret)
		return ret;

	if (info->drive >= nv50_i2c_addr_nr)
		return -EINVAL;

	port->base.func = &nv50_i2c_func;
	port->state = 0x00000007;
	port->addr = nv50_i2c_addr[info->drive];
	return 0;
}