
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend_parameters {int dummy; } ;
struct TYPE_2__ {int bandwidth_hz; scalar_t__ isdbt_partial_reception; int guard_interval; int transmission_mode; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; } ;


 int GUARD_INTERVAL_AUTO ;
 int TRANSMISSION_MODE_AUTO ;

__attribute__((used)) static int mb86a20s_get_frontend(struct dvb_frontend *fe,
 struct dvb_frontend_parameters *p)
{



 fe->dtv_property_cache.bandwidth_hz = 6000000;
 fe->dtv_property_cache.transmission_mode = TRANSMISSION_MODE_AUTO;
 fe->dtv_property_cache.guard_interval = GUARD_INTERVAL_AUTO;
 fe->dtv_property_cache.isdbt_partial_reception = 0;

 return 0;
}
