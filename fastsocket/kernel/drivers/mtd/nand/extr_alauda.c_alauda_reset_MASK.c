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
typedef  int /*<<< orphan*/  u8 ;
struct alauda {int /*<<< orphan*/  card_mutex; int /*<<< orphan*/  bulk_out; int /*<<< orphan*/  dev; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALAUDA_BULK_CMD ; 
 int /*<<< orphan*/  ALAUDA_BULK_RESET_MEDIA ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alauda *al)
{
	u8 command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_RESET_MEDIA, 0, 0,
		0, 0, 0, 0, al->port
	};
	FUNC0(&al->card_mutex);
	FUNC2(al->dev, al->bulk_out, command, 9, NULL, HZ);
	FUNC1(&al->card_mutex);
}