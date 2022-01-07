
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,char const*,int,unsigned long,...) ;

__attribute__((used)) static void _dump_areas(unsigned int spe_id, unsigned long priv2,
 unsigned long problem, unsigned long ls, unsigned long shadow,
 const char* func, int line)
{
 pr_debug("%s:%d: spe_id:  %xh (%u)\n", func, line, spe_id, spe_id);
 pr_debug("%s:%d: priv2:   %lxh\n", func, line, priv2);
 pr_debug("%s:%d: problem: %lxh\n", func, line, problem);
 pr_debug("%s:%d: ls:      %lxh\n", func, line, ls);
 pr_debug("%s:%d: shadow:  %lxh\n", func, line, shadow);
}
