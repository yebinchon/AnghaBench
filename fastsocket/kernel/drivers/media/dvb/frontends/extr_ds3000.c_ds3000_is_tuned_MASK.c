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
struct dvb_frontend {int dummy; } ;
typedef  int fe_status_t ;

/* Variables and functions */
 int FE_IS_TUNED ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int*) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe)
{
	fe_status_t tunerstat;

	FUNC0(fe, &tunerstat);

	return ((tunerstat & FE_IS_TUNED) == FE_IS_TUNED);
}