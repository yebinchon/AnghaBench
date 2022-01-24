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
struct bttv {int /*<<< orphan*/  audio; } ;

/* Variables and functions */
 int FUNC0 (struct bttv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC1(struct bttv *btv, int mute)
{
	return FUNC0(btv, btv->audio, mute);
}