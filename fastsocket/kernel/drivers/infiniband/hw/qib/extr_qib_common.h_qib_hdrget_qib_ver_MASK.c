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
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int QLOGIC_IB_I_VERS_MASK ; 
 int QLOGIC_IB_I_VERS_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u32 FUNC1(__le32 hdrword)
{
	return (FUNC0(hdrword) >> QLOGIC_IB_I_VERS_SHIFT) &
		QLOGIC_IB_I_VERS_MASK;
}