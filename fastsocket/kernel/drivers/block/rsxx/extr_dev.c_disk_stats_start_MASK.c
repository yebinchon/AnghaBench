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
 int /*<<< orphan*/  FUNC1 (struct hd_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct hd_struct*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct rsxx_cardinfo *card, struct bio *bio)
{
	struct hd_struct *part0 = &card->gendisk->part0;
	int rw = FUNC0(bio);
	int cpu;

	cpu = FUNC3();

	FUNC2(cpu, part0);
	FUNC1(part0, rw);

	FUNC4();
}