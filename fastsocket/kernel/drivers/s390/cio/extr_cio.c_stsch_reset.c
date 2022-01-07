
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;


 int EIO ;
 int barrier () ;
 int * cio_reset_pgm_check_handler ;
 scalar_t__ pgm_check_occured ;
 int * s390_base_pgm_handler_fn ;
 int stsch_err (struct subchannel_id,struct schib*) ;

__attribute__((used)) static int stsch_reset(struct subchannel_id schid, struct schib *addr)
{
 int rc;

 pgm_check_occured = 0;
 s390_base_pgm_handler_fn = cio_reset_pgm_check_handler;
 rc = stsch_err(schid, addr);
 s390_base_pgm_handler_fn = ((void*)0);


 barrier();

 if (pgm_check_occured)
  return -EIO;
 else
  return rc;
}
