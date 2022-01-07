
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int IO_REG_FCTR ;
 int ioasic_read (int ) ;

__attribute__((used)) static cycle_t dec_ioasic_hpt_read(struct clocksource *cs)
{
 return ioasic_read(IO_REG_FCTR);
}
