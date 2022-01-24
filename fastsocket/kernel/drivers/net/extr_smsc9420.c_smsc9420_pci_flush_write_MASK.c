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
struct smsc9420_pdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ID_REV ; 
 int /*<<< orphan*/  FUNC0 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct smsc9420_pdata *pd)
{
	/* to ensure PCI write completion, we must perform a PCI read */
	FUNC0(pd, ID_REV);
}