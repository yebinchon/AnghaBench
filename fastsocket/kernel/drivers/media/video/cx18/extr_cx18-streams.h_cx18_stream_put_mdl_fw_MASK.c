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
struct cx18_stream {int /*<<< orphan*/  q_free; } ;
struct cx18_mdl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx18_stream*,struct cx18_mdl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18_stream*) ; 

__attribute__((used)) static inline void FUNC2(struct cx18_stream *s,
					  struct cx18_mdl *mdl)
{
	/* Put mdl on q_free; the out work handler will move mdl(s) to q_busy */
	FUNC0(s, mdl, &s->q_free);
	FUNC1(s);
}