
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct dtv_property {int cmd; TYPE_1__ u; } ;






 int EINVAL ;
 int SYS_ISDBT ;

__attribute__((used)) static int jdvbt90502_set_property(struct dvb_frontend *fe,
       struct dtv_property *tvp)
{
 int r = 0;

 switch (tvp->cmd) {
 case 130:
  if (tvp->u.data != SYS_ISDBT)
   r = -EINVAL;
  break;
 case 131:
 case 128:
 case 129:
  break;
 default:
  r = -EINVAL;
 }
 return r;
}
