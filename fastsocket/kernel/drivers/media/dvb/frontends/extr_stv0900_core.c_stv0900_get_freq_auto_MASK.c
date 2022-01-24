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
typedef  int u32 ;
struct stv0900_internal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUN_RFFREQ0 ; 
 int /*<<< orphan*/  TUN_RFFREQ1 ; 
 int /*<<< orphan*/  TUN_RFFREQ2 ; 
 int /*<<< orphan*/  TUN_RFRESTE0 ; 
 int /*<<< orphan*/  TUN_RFRESTE1 ; 
 int FUNC0 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 

u32 FUNC1(struct stv0900_internal *intp, int demod)
{
	u32 freq, round;
	/*	Formulat :
	Tuner_Frequency(MHz)	= Regs / 64
	Tuner_granularity(MHz)	= Regs / 2048
	real_Tuner_Frequency	= Tuner_Frequency(MHz) - Tuner_granularity(MHz)
	*/
	freq = (FUNC0(intp, TUN_RFFREQ2) << 10) +
		(FUNC0(intp, TUN_RFFREQ1) << 2) +
		FUNC0(intp, TUN_RFFREQ0);

	freq = (freq * 1000) / 64;

	round = (FUNC0(intp, TUN_RFRESTE1) >> 2) +
		FUNC0(intp, TUN_RFRESTE0);

	round = (round * 1000) / 2048;

	return freq + round;
}