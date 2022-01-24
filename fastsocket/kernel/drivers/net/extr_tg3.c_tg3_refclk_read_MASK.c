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
typedef  int u64 ;
struct tg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TG3_EAV_REF_CLCK_LSB ; 
 int /*<<< orphan*/  TG3_EAV_REF_CLCK_MSB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC1(struct tg3 *tp)
{
	u64 stamp = FUNC0(TG3_EAV_REF_CLCK_LSB);
	return stamp | (u64)FUNC0(TG3_EAV_REF_CLCK_MSB) << 32;
}