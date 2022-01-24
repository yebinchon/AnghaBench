#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_3__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_9__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_4__ ops; struct dib7000p_state* demodulator_priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;
struct TYPE_10__ {TYPE_2__ gated_tuner_i2c_adap; } ;
struct dib7000p_state {int /*<<< orphan*/  i2c_addr; struct i2c_adapter* i2c_adap; TYPE_5__ i2c_master; struct dvb_frontend demod; TYPE_4__ cfg; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;
struct dib7000p_config {int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000P ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OUTMODE_MPEG2_FIFO ; 
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ; 
 scalar_t__ OUTMODE_MPEG2_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (struct dib7000p_state*) ; 
 scalar_t__ FUNC1 (struct dib7000p_state*) ; 
 struct dib7000p_config dib7000p_ops ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*) ; 
 struct dib7000p_state* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct dib7000p_config*,int) ; 

struct dvb_frontend * FUNC7(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib7000p_config *cfg)
{
	struct dvb_frontend *demod;
	struct dib7000p_state *st;
	st = FUNC5(sizeof(struct dib7000p_state), GFP_KERNEL);
	if (st == NULL)
		return NULL;

	FUNC6(&st->cfg, cfg, sizeof(struct dib7000p_config));
	st->i2c_adap = i2c_adap;
	st->i2c_addr = i2c_addr;
	st->gpio_val = cfg->gpio_val;
	st->gpio_dir = cfg->gpio_dir;

	/* Ensure the output mode remains at the previous default if it's
	 * not specifically set by the caller.
	 */
	if ((st->cfg.output_mode != OUTMODE_MPEG2_SERIAL) &&
	    (st->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
		st->cfg.output_mode = OUTMODE_MPEG2_FIFO;

	demod                   = &st->demod;
	demod->demodulator_priv = st;
	FUNC6(&st->demod.ops, &dib7000p_ops, sizeof(struct dvb_frontend_ops));

    FUNC2(st, 1287, 0x0003); /* sram lead in, rdy */

	if (FUNC1(st) != 0)
		goto error;

	/* FIXME: make sure the dev.parent field is initialized, or else
	request_firmware() will hit an OOPS (this should be moved somewhere
	more common) */
	st->i2c_master.gated_tuner_i2c_adap.dev.parent = i2c_adap->dev.parent;

	FUNC3(&st->i2c_master, DIB7000P, st->i2c_adap, st->i2c_addr);

	FUNC0(st);

	return demod;

error:
	FUNC4(st);
	return NULL;
}