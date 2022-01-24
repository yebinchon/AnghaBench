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
struct au1xmmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long param)
{
	struct au1xmmc_host *host = (struct au1xmmc_host *)param;

	u32 status = FUNC2(FUNC0(host));
	FUNC1(host, status);
}