
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_register (int *) ;
 int sclp_rw_event ;

int
sclp_rw_init(void)
{
 static int init_done = 0;
 int rc;

 if (init_done)
  return 0;

 rc = sclp_register(&sclp_rw_event);
 if (rc == 0)
  init_done = 1;
 return rc;
}
