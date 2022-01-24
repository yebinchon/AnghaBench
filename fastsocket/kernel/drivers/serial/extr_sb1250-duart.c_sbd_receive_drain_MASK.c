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
struct sbd_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_DUART_RX_HOLD ; 
 int /*<<< orphan*/  FUNC0 (struct sbd_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sbd_port*) ; 

__attribute__((used)) static int FUNC2(struct sbd_port *sport)
{
	int loops = 10000;

	while (FUNC1(sport) && --loops)
		FUNC0(sport, R_DUART_RX_HOLD);
	return loops;
}