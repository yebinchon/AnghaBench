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
typedef  int u8 ;
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_IREN ; 
 int CIR_IREN_PE ; 
 int CIR_IREN_RTR ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nvt_dev *nvt)
{
	u8 iren;

	iren = CIR_IREN_RTR | CIR_IREN_PE;
	FUNC0(nvt, iren, CIR_IREN);
}