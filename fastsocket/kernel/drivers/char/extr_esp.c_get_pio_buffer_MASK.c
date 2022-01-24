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
struct esp_pio_buffer {struct esp_pio_buffer* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct esp_pio_buffer* free_pio_buf ; 
 struct esp_pio_buffer* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pio_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline struct esp_pio_buffer *FUNC3(void)
{
	struct esp_pio_buffer *buf;
	unsigned long flags;

	FUNC1(&pio_lock, flags);
	if (free_pio_buf) {
		buf = free_pio_buf;
		free_pio_buf = buf->next;
	} else {
		buf = FUNC0(sizeof(struct esp_pio_buffer), GFP_ATOMIC);
	}
	FUNC2(&pio_lock, flags);
	return buf;
}