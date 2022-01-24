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
typedef  int u16 ;
struct bf54x_kpad {int dummy; } ;

/* Variables and functions */
 int KPAD_PRESSED ; 
 int FUNC0 () ; 

__attribute__((used)) static inline u16 FUNC1(struct bf54x_kpad *bf54x_kpad)
{
	return (FUNC0() & KPAD_PRESSED);
}