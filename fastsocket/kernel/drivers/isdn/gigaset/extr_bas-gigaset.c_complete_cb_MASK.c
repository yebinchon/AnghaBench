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
struct cmdbuf_t {scalar_t__ wake_tasklet; scalar_t__ len; int /*<<< orphan*/ * prev; struct cmdbuf_t* next; } ;
struct cardstate {scalar_t__ curlen; int /*<<< orphan*/ * lastcmdbuf; struct cmdbuf_t* cmdbuf; int /*<<< orphan*/  cmdbytes; } ;

/* Variables and functions */
 int DEBUG_LOCKCMD ; 
 int DEBUG_TRANSCMD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdbuf_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct cardstate *cs)
{
	struct cmdbuf_t *cb = cs->cmdbuf;

	/* unqueue completed buffer */
	cs->cmdbytes -= cs->curlen;
	FUNC0(DEBUG_TRANSCMD|DEBUG_LOCKCMD,
		"write_command: sent %u bytes, %u left",
		cs->curlen, cs->cmdbytes);
	if ((cs->cmdbuf = cb->next) != NULL) {
		cs->cmdbuf->prev = NULL;
		cs->curlen = cs->cmdbuf->len;
	} else {
		cs->lastcmdbuf = NULL;
		cs->curlen = 0;
	}

	if (cb->wake_tasklet)
		FUNC2(cb->wake_tasklet);

	FUNC1(cb);
}