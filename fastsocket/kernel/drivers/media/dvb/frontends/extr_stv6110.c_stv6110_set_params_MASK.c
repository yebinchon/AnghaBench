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
typedef  int /*<<< orphan*/  u32 ;
struct dvb_frontend_parameters {int dummy; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  frequency; int /*<<< orphan*/  rolloff; int /*<<< orphan*/  symbol_rate; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
			      struct dvb_frontend_parameters *params)
{
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
	u32 bandwidth = FUNC0(c->symbol_rate, c->rolloff);

	FUNC2(fe, c->frequency);
	FUNC1(fe, bandwidth);

	return 0;
}