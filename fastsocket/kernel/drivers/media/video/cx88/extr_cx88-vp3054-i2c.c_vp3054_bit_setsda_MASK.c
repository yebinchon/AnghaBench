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
struct vp3054_i2c_state {int state; } ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct vp3054_i2c_state* vp3054; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_GP0_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *data, int state)
{
	struct cx8802_dev *dev = data;
	struct cx88_core *core = dev->core;
	struct vp3054_i2c_state *vp3054_i2c = dev->vp3054;

	if (state) {
		vp3054_i2c->state |=  0x0002;	/* SDA high */
		vp3054_i2c->state &= ~0x0200;	/* tristate pin */
	} else {
		vp3054_i2c->state &= ~0x0002;	/* SDA low */
		vp3054_i2c->state |=  0x0200;	/* drive pin */
	}
	FUNC1(MO_GP0_IO, 0x020000 | vp3054_i2c->state);
	FUNC0(MO_GP0_IO);
}