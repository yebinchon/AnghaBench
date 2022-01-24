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
typedef  int /*<<< orphan*/  u16 ;
struct dibx000_bandwidth_config {int ifreq; int internal; int /*<<< orphan*/  sad_cfg; } ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib8000_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct dib8000_state *state, const struct dibx000_bandwidth_config *bw)
{
	FUNC1("ifreq: %d %x, inversion: %d", bw->ifreq, bw->ifreq, bw->ifreq >> 25);
	FUNC0(state, 23, (u16) (((bw->internal * 1000) >> 16) & 0xffff));	/* P_sec_len */
	FUNC0(state, 24, (u16) ((bw->internal * 1000) & 0xffff));
	FUNC0(state, 27, (u16) ((bw->ifreq >> 16) & 0x01ff));
	FUNC0(state, 28, (u16) (bw->ifreq & 0xffff));
	FUNC0(state, 26, (u16) ((bw->ifreq >> 25) & 0x0003));

	FUNC0(state, 922, bw->sad_cfg);
}