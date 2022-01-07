
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long R30XX_CONF_HALT ;
 unsigned long read_c0_conf () ;
 int write_c0_conf (unsigned long) ;

__attribute__((used)) static void r3081_wait(void)
{
 unsigned long cfg = read_c0_conf();
 write_c0_conf(cfg | R30XX_CONF_HALT);
}
