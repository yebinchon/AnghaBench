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
struct sh_mobile_ceu_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPSR ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC2(struct sh_mobile_ceu_dev *pcdev)
{
	u32 capsr = FUNC0(pcdev, CAPSR);
	FUNC1(pcdev, CAPSR, 1 << 16); /* reset, stop capture */
	return capsr;
}