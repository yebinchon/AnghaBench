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
struct snd_cx18_card {int /*<<< orphan*/  v4l2_dev; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cx18* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct snd_cx18_card *cxsc)
{
	struct cx18 *cx = FUNC1(cxsc->v4l2_dev);
	FUNC0(&cx->serialize_lock);
}