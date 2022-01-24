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
struct tda18271_priv {int dummy; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tda18271_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tda18271_list_mutex ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;

	FUNC1(&tda18271_list_mutex);

	if (priv)
		FUNC0(priv);

	FUNC2(&tda18271_list_mutex);

	fe->tuner_priv = NULL;

	return 0;
}