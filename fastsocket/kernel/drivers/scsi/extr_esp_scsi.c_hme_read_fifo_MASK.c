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
struct esp {int* fifo; int sreg2; int fifo_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_CMD_FLUSH ; 
 int /*<<< orphan*/  ESP_FDATA ; 
 int /*<<< orphan*/  ESP_FFLAGS ; 
 int ESP_FF_FBYTES ; 
 int ESP_STAT2_F1BYTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct esp *esp)
{
	int fcnt = FUNC0(ESP_FFLAGS) & ESP_FF_FBYTES;
	int idx = 0;

	while (fcnt--) {
		esp->fifo[idx++] = FUNC0(ESP_FDATA);
		esp->fifo[idx++] = FUNC0(ESP_FDATA);
	}
	if (esp->sreg2 & ESP_STAT2_F1BYTE) {
		FUNC1(0, ESP_FDATA);
		esp->fifo[idx++] = FUNC0(ESP_FDATA);
		FUNC2(esp, ESP_CMD_FLUSH);
	}
	esp->fifo_cnt = idx;
}