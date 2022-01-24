#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ps3_mmio_region {int /*<<< orphan*/  lpar_addr; int /*<<< orphan*/  len; int /*<<< orphan*/  bus_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  bus_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC1(const struct ps3_mmio_region* r,
	const char* func, int line)
{
	FUNC0("%s:%d: dev       %llu:%llu\n", func, line, r->dev->bus_id,
		r->dev->dev_id);
	FUNC0("%s:%d: bus_addr  %lxh\n", func, line, r->bus_addr);
	FUNC0("%s:%d: len       %lxh\n", func, line, r->len);
	FUNC0("%s:%d: lpar_addr %lxh\n", func, line, r->lpar_addr);
}