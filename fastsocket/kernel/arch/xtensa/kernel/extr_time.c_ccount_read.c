
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cycle_t ;


 int get_ccount () ;

__attribute__((used)) static cycle_t ccount_read(void)
{
 return (cycle_t)get_ccount();
}
