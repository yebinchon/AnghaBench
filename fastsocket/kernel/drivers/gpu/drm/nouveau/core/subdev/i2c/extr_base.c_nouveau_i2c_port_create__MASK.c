#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int /*<<< orphan*/  refcount; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {struct i2c_algorithm const* algo; struct nouveau_i2c_port* algo_data; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct nouveau_i2c_port {int index; int udelay; int /*<<< orphan*/  head; TYPE_3__ adapter; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  setsda; int /*<<< orphan*/  pre_xfer; struct nouveau_i2c_port* data; int /*<<< orphan*/  timeout; } ;
struct nouveau_i2c {int /*<<< orphan*/  ports; } ;
struct nouveau_device {char* name; int /*<<< orphan*/  cfgopt; TYPE_2__* pdev; } ;
struct i2c_algorithm {int dummy; } ;
struct i2c_algo_bit_data {int index; int udelay; int /*<<< orphan*/  head; TYPE_3__ adapter; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  setsda; int /*<<< orphan*/  pre_xfer; struct i2c_algo_bit_data* data; int /*<<< orphan*/  timeout; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSTMSEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct nouveau_i2c*) ; 
 struct nouveau_i2c_port* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct i2c_algorithm const nouveau_i2c_bit_algo ; 
 int /*<<< orphan*/  nouveau_i2c_getscl ; 
 int /*<<< orphan*/  nouveau_i2c_getsda ; 
 int /*<<< orphan*/  nouveau_i2c_pre_xfer ; 
 int /*<<< orphan*/  nouveau_i2c_setscl ; 
 int /*<<< orphan*/  nouveau_i2c_setsda ; 
 int FUNC7 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int,void**) ; 
 struct nouveau_device* FUNC8 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int
FUNC11(struct nouveau_object *parent,
			 struct nouveau_object *engine,
			 struct nouveau_oclass *oclass, u8 index,
			 const struct i2c_algorithm *algo,
			 int size, void **pobject)
{
	struct nouveau_device *device = FUNC8(parent);
	struct nouveau_i2c *i2c = (void *)engine;
	struct nouveau_i2c_port *port;
	int ret;

	ret = FUNC7(parent, engine, oclass, 0, size, pobject);
	port = *pobject;
	if (ret)
		return ret;

	FUNC9(port->adapter.name, sizeof(port->adapter.name),
		 "nouveau-%s-%d", device->name, index);
	port->adapter.owner = THIS_MODULE;
	port->adapter.dev.parent = &device->pdev->dev;
	port->index = index;
	FUNC3(&port->adapter, i2c);

	if ( algo == &nouveau_i2c_bit_algo &&
	    !FUNC6(device->cfgopt, "NvI2C", CSTMSEL)) {
		struct i2c_algo_bit_data *bit;

		bit = FUNC4(sizeof(*bit), GFP_KERNEL);
		if (!bit)
			return -ENOMEM;

		bit->udelay = 10;
		bit->timeout = FUNC10(2200);
		bit->data = port;
		bit->pre_xfer = nouveau_i2c_pre_xfer;
		bit->setsda = nouveau_i2c_setsda;
		bit->setscl = nouveau_i2c_setscl;
		bit->getsda = nouveau_i2c_getsda;
		bit->getscl = nouveau_i2c_getscl;

		port->adapter.algo_data = bit;
		ret = FUNC2(&port->adapter);
	} else {
		port->adapter.algo_data = port;
		port->adapter.algo = algo;
		ret = FUNC1(&port->adapter);
	}

	/* drop port's i2c subdev refcount, i2c handles this itself */
	if (ret == 0) {
		FUNC5(&port->head, &i2c->ports);
		FUNC0(&parent->refcount);
		FUNC0(&engine->refcount);
	}

	return ret;
}