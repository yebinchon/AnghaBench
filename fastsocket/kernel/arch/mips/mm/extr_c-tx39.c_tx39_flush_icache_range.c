
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TX39_CONF_ICE ;
 int TX39_STOP_STREAMING () ;
 unsigned long dcache_size ;
 unsigned long icache_size ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int protected_blast_dcache_range (unsigned long,unsigned long) ;
 int protected_blast_icache_range (unsigned long,unsigned long) ;
 unsigned long read_c0_conf () ;
 int tx39_blast_dcache () ;
 int tx39_blast_icache () ;
 int write_c0_conf (unsigned long) ;

__attribute__((used)) static void tx39_flush_icache_range(unsigned long start, unsigned long end)
{
 if (end - start > dcache_size)
  tx39_blast_dcache();
 else
  protected_blast_dcache_range(start, end);

 if (end - start > icache_size)
  tx39_blast_icache();
 else {
  unsigned long flags, config;

  local_irq_save(flags);
  config = read_c0_conf();
  write_c0_conf(config & ~TX39_CONF_ICE);
  TX39_STOP_STREAMING();
  protected_blast_icache_range(start, end);
  write_c0_conf(config);
  local_irq_restore(flags);
 }
}
