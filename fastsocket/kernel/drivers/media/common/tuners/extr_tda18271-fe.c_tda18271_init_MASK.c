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
struct tda18271_priv {scalar_t__ id; int /*<<< orphan*/  lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 scalar_t__ TDA18271HDC2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	int ret;

	FUNC0(&priv->lock);

	/* full power up */
	ret = FUNC3(fe, 0, 0, 0);
	if (FUNC5(ret))
		goto fail;

	/* initialization */
	ret = FUNC2(fe);
	if (FUNC5(ret))
		goto fail;

	if (priv->id == TDA18271HDC2)
		FUNC4(fe);
fail:
	FUNC1(&priv->lock);

	return ret;
}