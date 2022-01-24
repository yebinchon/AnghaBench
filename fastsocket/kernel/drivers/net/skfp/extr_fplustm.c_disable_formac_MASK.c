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
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_IMSK1L ; 
 int /*<<< orphan*/  FM_IMSK1U ; 
 int /*<<< orphan*/  FM_IMSK2L ; 
 int /*<<< orphan*/  FM_IMSK2U ; 
 int /*<<< orphan*/  FM_IMSK3L ; 
 int /*<<< orphan*/  FM_IMSK3U ; 
 int /*<<< orphan*/  MW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc)
{
	/* clear formac IMSK : 1 disables irq */
	FUNC1(FUNC0(FM_IMSK1U),MW) ;
	FUNC1(FUNC0(FM_IMSK1L),MW) ;
	FUNC1(FUNC0(FM_IMSK2U),MW) ;
	FUNC1(FUNC0(FM_IMSK2L),MW) ;
	FUNC1(FUNC0(FM_IMSK3U),MW) ;
	FUNC1(FUNC0(FM_IMSK3L),MW) ;
}