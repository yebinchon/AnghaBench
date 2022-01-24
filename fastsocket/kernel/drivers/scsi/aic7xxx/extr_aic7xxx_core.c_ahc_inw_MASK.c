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
typedef  int uint16_t ;
typedef  scalar_t__ u_int ;
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ahc_softc*,scalar_t__) ; 

uint16_t
FUNC1(struct ahc_softc *ahc, u_int port)
{
	uint16_t r = FUNC0(ahc, port+1) << 8;
	return r | FUNC0(ahc, port);
}