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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline int FUNC1(unsigned long *field)
{
  int rv;

  if (*field == 0)
    FUNC0("No free mscp");

  asm volatile (
	"xorl %0,%0\n\t"
	"0: bsfw %1,%w0\n\t"
	"btr %0,%1\n\t"
	"jnc 0b"
	: "=&r" (rv), "=m" (*field) :);

  return rv;
}