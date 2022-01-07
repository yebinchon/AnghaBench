
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int ENOMEM ;
 int IVTV_MAX_STREAMS ;
 int ivtv_reg_dev (struct ivtv*,int) ;
 int ivtv_streams_cleanup (struct ivtv*,int) ;

int ivtv_streams_register(struct ivtv *itv)
{
 int type;
 int err = 0;


 for (type = 0; type < IVTV_MAX_STREAMS; type++)
  err |= ivtv_reg_dev(itv, type);

 if (err == 0)
  return 0;


 ivtv_streams_cleanup(itv, 1);
 return -ENOMEM;
}
