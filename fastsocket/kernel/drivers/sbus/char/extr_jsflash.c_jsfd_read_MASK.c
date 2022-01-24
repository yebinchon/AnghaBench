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
struct byte4 {char* s; unsigned int n; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(char *buf, unsigned long p, size_t togo) {
	union byte4 {
		char s[4];
		unsigned int n;
	} b;

	while (togo >= 4) {
		togo -= 4;
		b.n = FUNC0(p);
		FUNC1(buf, b.s, 4);
		p += 4;
		buf += 4;
	}
}