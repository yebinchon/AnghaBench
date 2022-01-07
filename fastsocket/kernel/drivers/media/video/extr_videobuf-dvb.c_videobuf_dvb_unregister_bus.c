
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dvb_frontends {int adapter; } ;


 int dvb_unregister_adapter (int *) ;
 int videobuf_dvb_dealloc_frontends (struct videobuf_dvb_frontends*) ;

void videobuf_dvb_unregister_bus(struct videobuf_dvb_frontends *f)
{
 videobuf_dvb_dealloc_frontends(f);

 dvb_unregister_adapter(&f->adapter);
}
