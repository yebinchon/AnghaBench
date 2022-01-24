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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int MMR_DES_AVAIL_AES ; 
 int MMR_DES_AVAIL_DES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmr_des_avail ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(u_long		base)	/* i/o port of the card */
{
  int	temp;

  temp = FUNC0(base, FUNC1(0, mmr_des_avail));
  if((temp != MMR_DES_AVAIL_DES) && (temp != MMR_DES_AVAIL_AES))
    return 0;
  else
    return temp;
}