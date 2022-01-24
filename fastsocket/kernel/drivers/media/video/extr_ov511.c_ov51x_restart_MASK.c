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
struct usb_ov511 {scalar_t__ bclass; scalar_t__ stopped; } ;

/* Variables and functions */
 scalar_t__ BCL_OV518 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int R51x_SYS_RESET ; 
 int FUNC1 (struct usb_ov511*,int,int) ; 

__attribute__((used)) static inline int
FUNC2(struct usb_ov511 *ov)
{
	if (ov->stopped) {
		FUNC0(4, "restarting");
		ov->stopped = 0;

		/* Reinitialize the stream */
		if (ov->bclass == BCL_OV518)
			FUNC1(ov, 0x2f, 0x80);

		return (FUNC1(ov, R51x_SYS_RESET, 0x00));
	}

	return 0;
}