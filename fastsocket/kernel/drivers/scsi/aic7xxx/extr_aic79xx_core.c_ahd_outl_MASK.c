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
typedef  int value ;
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,scalar_t__,int) ; 

void
FUNC1(struct ahd_softc *ahd, u_int port, uint32_t value)
{
	FUNC0(ahd, port, (value) & 0xFF);
	FUNC0(ahd, port+1, ((value) >> 8) & 0xFF);
	FUNC0(ahd, port+2, ((value) >> 16) & 0xFF);
	FUNC0(ahd, port+3, ((value) >> 24) & 0xFF);
}