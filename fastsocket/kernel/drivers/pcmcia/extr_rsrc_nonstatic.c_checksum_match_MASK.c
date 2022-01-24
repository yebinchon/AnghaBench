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
 int FUNC0 (struct pcmcia_socket*,struct resource*) ; 
 struct resource* FUNC1 (struct pcmcia_socket*,unsigned long,unsigned long,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

__attribute__((used)) static int
FUNC3(struct pcmcia_socket *s, unsigned long base, unsigned long size)
{
	struct resource *res1, *res2;
	int a = -1, b = -1;

	res1 = FUNC1(s, base, size/2, IORESOURCE_MEM, "cs memory probe");
	res2 = FUNC1(s, base + size/2, size/2, IORESOURCE_MEM, "cs memory probe");

	if (res1 && res2) {
		a = FUNC0(s, res1);
		b = FUNC0(s, res2);
	}

	FUNC2(res2);
	FUNC2(res1);

	return (a == b) && (a >= 0);
}