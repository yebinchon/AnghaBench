#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rsxx_cardinfo {TYPE_1__* gendisk; } ;
struct hd_struct {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct hd_struct part0; } ;

/* Variables and functions */
 int FUNC0 (struct bio*) ; 
 unsigned long FUNC1 (struct bio*) ; 
 int /*<<< orphan*/ * ios ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct hd_struct*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,struct hd_struct*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/ * ticks ; 

__attribute__((used)) static void FUNC8(struct rsxx_cardinfo *card,
				struct bio *bio,
				unsigned long start_time)
{
	struct hd_struct *part0 = &card->gendisk->part0;
	unsigned long duration = jiffies - start_time;
	int rw = FUNC0(bio);
	int cpu;

	cpu = FUNC6();

	FUNC4(cpu, part0, sectors[rw], FUNC1(bio));
	FUNC5(cpu, part0, ios[rw]);
	FUNC4(cpu, part0, ticks[rw], duration);

	FUNC3(cpu, part0);
	FUNC2(part0, rw);

	FUNC7();
}