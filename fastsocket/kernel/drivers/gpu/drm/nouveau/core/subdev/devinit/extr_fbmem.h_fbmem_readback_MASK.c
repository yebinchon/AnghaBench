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
typedef  scalar_t__ u32 ;
struct io_mapping {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct io_mapping*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct io_mapping*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC2(struct io_mapping *fb, u32 off, u32 val)
{
	FUNC1(fb, off, val);
	return val == FUNC0(fb, off);
}