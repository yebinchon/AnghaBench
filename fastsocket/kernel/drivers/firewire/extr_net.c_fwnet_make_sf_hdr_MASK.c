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
struct rfc2734_header {int w0; int /*<<< orphan*/  w1; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static inline void FUNC4(struct rfc2734_header *hdr,
		unsigned lf, unsigned dg_size, unsigned fg_off, unsigned dgl)
{
	hdr->w0 = FUNC3(lf)
		  | FUNC0(dg_size)
		  | FUNC2(fg_off);
	hdr->w1 = FUNC1(dgl);
}