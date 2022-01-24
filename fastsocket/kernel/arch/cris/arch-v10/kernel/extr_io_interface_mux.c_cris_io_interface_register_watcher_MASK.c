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
struct watcher {void (* notify ) (unsigned int const,unsigned int const,unsigned char const,unsigned char const) ;struct watcher* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ gpio_in_pins ; 
 scalar_t__ gpio_out_pins ; 
 scalar_t__ gpio_pa_pins ; 
 scalar_t__ gpio_pb_pins ; 
 struct watcher* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void FUNC2 (unsigned int const,unsigned int const,unsigned char const,unsigned char const) ; 
 struct watcher* watchers ; 

int FUNC3(void (*notify)(const unsigned int gpio_in_available,
                                                      const unsigned int gpio_out_available,
                                                      const unsigned char pa_available,
                                                      const unsigned char pb_available))
{
	struct watcher *w;

	(void)FUNC0();

	if (NULL == notify) {
		return -EINVAL;
	}
	w = FUNC1(sizeof(*w), GFP_KERNEL);
	if (!w) {
		return -ENOMEM;
	}
	w->notify = notify;
	w->next = watchers;
	watchers = w;

	w->notify((const unsigned int)gpio_in_pins,
		  (const unsigned int)gpio_out_pins,
		  (const unsigned char)gpio_pa_pins,
		  (const unsigned char)gpio_pb_pins);

	return 0;
}