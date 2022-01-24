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
struct gp8psk_fe_state {int lock; int snr; int status_check_interval; scalar_t__ next_status_check; int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_SIGNAL_LOCK ; 
 int /*<<< orphan*/  GET_SIGNAL_STRENGTH ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct gp8psk_fe_state *st)
{
	u8 buf[6];
	if (FUNC1(jiffies,st->next_status_check)) {
		FUNC0(st->d, GET_SIGNAL_LOCK, 0,0,&st->lock,1);
		FUNC0(st->d, GET_SIGNAL_STRENGTH, 0,0,buf,6);
		st->snr = (buf[1]) << 8 | buf[0];
		st->next_status_check = jiffies + (st->status_check_interval*HZ)/1000;
	}
	return 0;
}