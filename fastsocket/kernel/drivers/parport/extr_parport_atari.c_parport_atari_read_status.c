
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {int par_dt_reg; } ;


 unsigned char PARPORT_STATUS_BUSY ;
 unsigned char PARPORT_STATUS_ERROR ;
 unsigned char PARPORT_STATUS_SELECT ;
 TYPE_1__ st_mfp ;

__attribute__((used)) static unsigned char
parport_atari_read_status(struct parport *p)
{
 return ((st_mfp.par_dt_reg & 1 ? 0 : PARPORT_STATUS_BUSY) |
  PARPORT_STATUS_SELECT | PARPORT_STATUS_ERROR);
}
