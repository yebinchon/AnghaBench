
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_is_at91rm9200 () ;

__attribute__((used)) static bool atmel_spi_is_v2(void)
{
 return !cpu_is_at91rm9200();
}
