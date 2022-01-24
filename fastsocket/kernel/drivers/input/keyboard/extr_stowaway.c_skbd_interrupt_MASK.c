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
struct skbd {scalar_t__* keycode; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned char SKBD_KEY_MASK ; 
 unsigned char SKBD_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 struct skbd* FUNC2 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC3(struct serio *serio, unsigned char data,
				  unsigned int flags)
{
	struct skbd *skbd = FUNC2(serio);
	struct input_dev *dev = skbd->dev;

	if (skbd->keycode[data & SKBD_KEY_MASK]) {
		FUNC0(dev, skbd->keycode[data & SKBD_KEY_MASK],
				 !(data & SKBD_RELEASE));
		FUNC1(dev);
	}

	return IRQ_HANDLED;
}