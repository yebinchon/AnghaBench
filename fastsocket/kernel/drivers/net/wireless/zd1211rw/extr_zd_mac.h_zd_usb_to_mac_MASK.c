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
struct zd_usb {int dummy; } ;
struct zd_mac {int dummy; } ;

/* Variables and functions */
 struct zd_mac* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_usb*) ; 

__attribute__((used)) static inline struct zd_mac *FUNC2(struct zd_usb *usb)
{
	return FUNC0(FUNC1(usb));
}