#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ media; } ;
typedef  TYPE_2__ pc300chconf_t ;
struct TYPE_10__ {int /*<<< orphan*/  conf; } ;
typedef  TYPE_3__ pc300ch_t ;
struct TYPE_8__ {int nchan; } ;
struct TYPE_11__ {TYPE_3__* chan; TYPE_1__ hw; } ;
typedef  TYPE_4__ pc300_t ;

/* Variables and functions */
 scalar_t__ IF_IFACE_T1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 

__attribute__((used)) static void FUNC2(pc300_t * card)
{
	int ch;

	for (ch = 0; ch < card->hw.nchan; ch++) {
		pc300ch_t *chan = &card->chan[ch];
		pc300chconf_t *conf = (pc300chconf_t *) & chan->conf;

		if (conf->media == IF_IFACE_T1) {
			FUNC1(card, ch);
		} else {
			FUNC0(card, ch);
		}
	}
}