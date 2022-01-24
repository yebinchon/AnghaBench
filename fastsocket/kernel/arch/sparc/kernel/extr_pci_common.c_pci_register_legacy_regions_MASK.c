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
struct resource {char* name; void* flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IORESOURCE_BUSY ; 
 struct resource* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,struct resource*) ; 

__attribute__((used)) static void FUNC2(struct resource *io_res,
					struct resource *mem_res)
{
	struct resource *p;

	/* VGA Video RAM. */
	p = FUNC0(sizeof(*p), GFP_KERNEL);
	if (!p)
		return;

	p->name = "Video RAM area";
	p->start = mem_res->start + 0xa0000UL;
	p->end = p->start + 0x1ffffUL;
	p->flags = IORESOURCE_BUSY;
	FUNC1(mem_res, p);

	p = FUNC0(sizeof(*p), GFP_KERNEL);
	if (!p)
		return;

	p->name = "System ROM";
	p->start = mem_res->start + 0xf0000UL;
	p->end = p->start + 0xffffUL;
	p->flags = IORESOURCE_BUSY;
	FUNC1(mem_res, p);

	p = FUNC0(sizeof(*p), GFP_KERNEL);
	if (!p)
		return;

	p->name = "Video ROM";
	p->start = mem_res->start + 0xc0000UL;
	p->end = p->start + 0x7fffUL;
	p->flags = IORESOURCE_BUSY;
	FUNC1(mem_res, p);
}