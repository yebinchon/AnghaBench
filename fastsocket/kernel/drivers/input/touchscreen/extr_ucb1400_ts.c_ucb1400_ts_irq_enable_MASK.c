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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IE_CLEAR ; 
 int /*<<< orphan*/  UCB_IE_FAL ; 
 int /*<<< orphan*/  UCB_IE_TSPX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct snd_ac97 *ac97)
{
	FUNC0(ac97, UCB_IE_CLEAR, UCB_IE_TSPX);
	FUNC0(ac97, UCB_IE_CLEAR, 0);
	FUNC0(ac97, UCB_IE_FAL, UCB_IE_TSPX);
}