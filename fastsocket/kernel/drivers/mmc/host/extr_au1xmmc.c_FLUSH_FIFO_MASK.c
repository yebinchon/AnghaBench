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
typedef  int u32 ;
struct au1xmmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int SD_CONFIG2_DF ; 
 int SD_CONFIG2_FF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct au1xmmc_host *host)
{
	u32 val = FUNC1(FUNC0(host));

	FUNC4(val | SD_CONFIG2_FF, FUNC0(host));
	FUNC3(1);

	/* SEND_STOP will turn off clock control - this re-enables it */
	val &= ~SD_CONFIG2_DF;

	FUNC4(val, FUNC0(host));
	FUNC2();
}