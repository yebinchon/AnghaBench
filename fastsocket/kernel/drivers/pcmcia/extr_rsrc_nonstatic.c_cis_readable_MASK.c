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
struct resource {int dummy; } ;
struct pcmcia_socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct resource* FUNC0 (struct pcmcia_socket*,unsigned long,unsigned long,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int FUNC2 (struct pcmcia_socket*,struct resource*,unsigned int*) ; 

__attribute__((used)) static int
FUNC3(struct pcmcia_socket *s, unsigned long base, unsigned long size)
{
	struct resource *res1, *res2;
	unsigned int info1, info2;
	int ret = 0;

	res1 = FUNC0(s, base, size/2, IORESOURCE_MEM, "cs memory probe");
	res2 = FUNC0(s, base + size/2, size/2, IORESOURCE_MEM, "cs memory probe");

	if (res1 && res2) {
		ret = FUNC2(s, res1, &info1);
		ret += FUNC2(s, res2, &info2);
	}

	FUNC1(res2);
	FUNC1(res1);

	return (ret == 2) && (info1 == info2);
}