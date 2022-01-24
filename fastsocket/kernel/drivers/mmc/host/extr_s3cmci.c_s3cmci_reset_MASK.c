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
struct s3cmci_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SDICON ; 
 int /*<<< orphan*/  S3C2440_SDICON_SDRESET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct s3cmci_host *host)
{
	u32 con = FUNC0(host->base + S3C2410_SDICON);

	con |= S3C2440_SDICON_SDRESET;
	FUNC1(con, host->base + S3C2410_SDICON);
}