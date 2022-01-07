
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void au1k_wait(void)
{
 __asm__("	.set	mips3			\n"
  "	cache	0x14, 0(%0)		\n"
  "	cache	0x14, 32(%0)		\n"
  "	sync				\n"
  "	nop				\n"
  "	wait				\n"
  "	nop				\n"
  "	nop				\n"
  "	nop				\n"
  "	nop				\n"
  "	.set	mips0			\n"
  : : "r" (au1k_wait));
}
