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
struct tuner_simple_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe)
{
	struct tuner_simple_priv *priv = fe->tuner_priv;
	unsigned char byte;

	if (1 != FUNC0(&priv->i2c_props, &byte, 1))
		return 0;

	return byte;
}