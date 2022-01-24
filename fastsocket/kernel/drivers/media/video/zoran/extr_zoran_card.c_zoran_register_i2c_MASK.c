#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_3__* algo_data; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {struct zoran* data; } ;
struct zoran {TYPE_4__ i2c_adapter; TYPE_2__* pci_dev; TYPE_3__ i2c_algo; int /*<<< orphan*/  v4l2_dev; } ;
struct i2c_algo_bit_data {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zoran*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zoran_i2c_bit_data_template ; 

__attribute__((used)) static int
FUNC5 (struct zoran *zr)
{
	FUNC3(&zr->i2c_algo, &zoran_i2c_bit_data_template,
	       sizeof(struct i2c_algo_bit_data));
	zr->i2c_algo.data = zr;
	FUNC4(zr->i2c_adapter.name, FUNC0(zr),
		sizeof(zr->i2c_adapter.name));
	FUNC2(&zr->i2c_adapter, &zr->v4l2_dev);
	zr->i2c_adapter.algo_data = &zr->i2c_algo;
	zr->i2c_adapter.dev.parent = &zr->pci_dev->dev;
	return FUNC1(&zr->i2c_adapter);
}