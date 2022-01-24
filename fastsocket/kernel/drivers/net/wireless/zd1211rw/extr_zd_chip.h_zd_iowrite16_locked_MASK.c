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
typedef  int /*<<< orphan*/  zd_addr_t ;
typedef  int /*<<< orphan*/  u16 ;
struct zd_ioreq16 {int /*<<< orphan*/  value; int /*<<< orphan*/  addr; } ;
struct zd_chip {int /*<<< orphan*/  usb; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct zd_ioreq16*,int) ; 

__attribute__((used)) static inline int FUNC3(struct zd_chip *chip, u16 value,
	                              zd_addr_t addr)
{
	struct zd_ioreq16 ioreq;

	FUNC0(FUNC1(&chip->mutex));
	ioreq.addr = addr;
	ioreq.value = value;

	return FUNC2(&chip->usb, &ioreq, 1);
}