#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int endidx; int* seq; } ;
typedef  TYPE_1__ hp_sdc_transaction ;

/* Variables and functions */
 int HP_SDC_ACT_DATAOUT ; 
 int HP_SDC_ACT_PRECMD ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC1 (struct timeval *setto, uint8_t setcmd)
{
	uint32_t tenms;
	hp_sdc_transaction t;
	uint8_t tseq[6] = {
		HP_SDC_ACT_PRECMD | HP_SDC_ACT_DATAOUT,
		0, 3, 0, 0, 0
	};

	t.endidx = 6;

	if (0xffffff < setto->tv_sec) return -1;
	tenms  = setto->tv_sec * 100;
	if (0xffffff < setto->tv_usec / 10000) return -1;
	tenms += setto->tv_usec / 10000;
	if (tenms > 0xffffff) return -1;

	tseq[1] = setcmd;
	tseq[3] = (uint8_t)(tenms & 0xff);
	tseq[4] = (uint8_t)((tenms >> 8)  & 0xff);
	tseq[5] = (uint8_t)((tenms >> 16)  & 0xff);

	t.seq =			tseq;

	if (FUNC0(&t)) { 
		return -1;
	}
	return 0;
}