
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long linesz; } ;
struct TYPE_4__ {unsigned long linesz; } ;
struct TYPE_6__ {TYPE_2__ dcache; TYPE_1__ icache; } ;


 unsigned long TX39_CONF_ICE ;
 int TX39_STOP_STREAMING () ;
 TYPE_3__ current_cpu_data ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int protected_flush_icache_line (unsigned long) ;
 int protected_writeback_dcache_line (unsigned long) ;
 unsigned long read_c0_conf () ;
 int write_c0_conf (unsigned long) ;

__attribute__((used)) static void tx39_flush_cache_sigtramp(unsigned long addr)
{
 unsigned long ic_lsize = current_cpu_data.icache.linesz;
 unsigned long dc_lsize = current_cpu_data.dcache.linesz;
 unsigned long config;
 unsigned long flags;

 protected_writeback_dcache_line(addr & ~(dc_lsize - 1));


 local_irq_save(flags);
 config = read_c0_conf();
 write_c0_conf(config & ~TX39_CONF_ICE);
 TX39_STOP_STREAMING();
 protected_flush_icache_line(addr & ~(ic_lsize - 1));
 write_c0_conf(config);
 local_irq_restore(flags);
}
