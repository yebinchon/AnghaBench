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
struct multicall_space {int dummy; } ;

/* Variables and functions */
 struct multicall_space FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline struct multicall_space FUNC2(size_t args)
{
	FUNC1();
	return FUNC0(args);
}