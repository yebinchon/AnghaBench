#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {scalar_t__ iobase; } ;
typedef  TYPE_1__ hfc4s8s_hw ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  volatile) ; 

__attribute__((used)) static inline u_long
FUNC2(hfc4s8s_hw * a, u_char b)
{
	FUNC0(a, b);
	return (FUNC1((volatile u_int) a->iobase));
}