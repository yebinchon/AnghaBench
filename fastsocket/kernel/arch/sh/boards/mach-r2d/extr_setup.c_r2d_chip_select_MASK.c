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
struct sh_spi_info {int dummy; } ;

/* Variables and functions */
 int BITBANG_CS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PA_RTCCE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sh_spi_info *spi, int cs, int state)
{
	FUNC0(cs != 0);  /* Single Epson RTC-9701JE attached on CS0 */
	FUNC1(state == BITBANG_CS_ACTIVE, PA_RTCCE);
}