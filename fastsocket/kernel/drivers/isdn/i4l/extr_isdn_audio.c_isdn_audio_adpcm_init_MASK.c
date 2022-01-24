#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int d; int nbits; scalar_t__ nleft; scalar_t__ word; scalar_t__ a; } ;
typedef  TYPE_1__ adpcm_state ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 

adpcm_state *
FUNC1(adpcm_state * s, int nbits)
{
	if (!s)
		s = FUNC0(sizeof(adpcm_state), GFP_ATOMIC);
	if (s) {
		s->a = 0;
		s->d = 5;
		s->word = 0;
		s->nleft = 0;
		s->nbits = nbits;
	}
	return s;
}