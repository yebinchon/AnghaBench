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

/* Variables and functions */
 int SIO_VT1211_LDN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static inline void FUNC1(int sio_cip, int ldn)
{
	FUNC0(SIO_VT1211_LDN, sio_cip);
	FUNC0(ldn, sio_cip + 1);
}