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
struct linux_prom_registers {unsigned int which_io; unsigned int phys_addr; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int PROMREG_MAX ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,char*,char*,int) ; 
 int FUNC3 (int) ; 
 int prom_root_node ; 
 int FUNC4 (int,char*) ; 
 unsigned int FUNC5 (char*,char**,int) ; 

int FUNC6(char *name)
{
	char nbuf[128];
	char *s = name, *d;
	int node = prom_root_node, node2;
	unsigned int which_io, phys_addr;
	struct linux_prom_registers reg[PROMREG_MAX];

	while (*s++) {
		if (!*s) return node; /* path '.../' is legal */
		node = FUNC1(node);

		for (d = nbuf; *s != 0 && *s != '@' && *s != '/';)
			*d++ = *s++;
		*d = 0;
		
		node = FUNC4(node, nbuf);
		if (!node)
			return 0;

		if (*s == '@') {
			if (FUNC0(s[1]) && s[2] == ',') {
				which_io = FUNC5(s+1, NULL, 16);
				phys_addr = FUNC5(s+3, &d, 16);
				if (d != s + 3 && (!*d || *d == '/')
				    && d <= s + 3 + 8) {
					node2 = node;
					while (node2 && node2 != -1) {
						if (FUNC2 (node2, "reg", (char *)reg, sizeof (reg)) > 0) {
							if (which_io == reg[0].which_io && phys_addr == reg[0].phys_addr) {
								node = node2;
								break;
							}
						}
						node2 = FUNC3(node2);
						if (!node2 || node2 == -1)
							break;
						node2 = FUNC4(FUNC3(node2), nbuf);
					}
				}
			}
			while (*s != 0 && *s != '/') s++;
		}
	}
	return node;
}