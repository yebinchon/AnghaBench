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
struct tea5761_priv {int dummy; } ;
struct dvb_frontend {struct tea5761_priv* tuner_priv; } ;

/* Variables and functions */
 char const TEA5761_TUNCHECK_LEV_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static inline int FUNC1(struct dvb_frontend *fe, const char *buffer)
{
	struct tea5761_priv *priv = fe->tuner_priv;

	int signal = ((buffer[9] & TEA5761_TUNCHECK_LEV_MASK) << (13 - 4));

	FUNC0("Signal strength: %d\n", signal);

	return signal;
}