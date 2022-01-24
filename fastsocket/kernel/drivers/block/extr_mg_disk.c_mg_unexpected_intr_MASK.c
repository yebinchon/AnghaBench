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
struct mg_host {scalar_t__ dev_base; } ;

/* Variables and functions */
 scalar_t__ MG_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct mg_host*) ; 

__attribute__((used)) static void FUNC2(struct mg_host *host)
{
	u32 status = FUNC0((unsigned long)host->dev_base + MG_REG_STATUS);

	FUNC1("mg_unexpected_intr", status, host);
}