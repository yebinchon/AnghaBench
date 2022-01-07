
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void gdbstub_purge_cache(void)
{
 asm volatile("	dcef	@(gr0,gr0),#1	\n"
       "	icei	@(gr0,gr0),#1	\n"
       "	membar			\n"
       "	bar			\n"
       );
}
