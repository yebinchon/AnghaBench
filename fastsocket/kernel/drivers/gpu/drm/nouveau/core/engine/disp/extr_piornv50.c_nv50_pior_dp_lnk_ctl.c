
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_i2c_port {TYPE_1__* func; } ;
struct nouveau_disp {int dummy; } ;
struct dcb_output {int dummy; } ;
struct TYPE_2__ {int (* lnk_ctl ) (struct nouveau_i2c_port*,int,int,int) ;} ;


 int EINVAL ;
 struct nouveau_i2c_port* nv50_pior_dp_find (struct nouveau_disp*,struct dcb_output*) ;
 int stub1 (struct nouveau_i2c_port*,int,int,int) ;

__attribute__((used)) static int
nv50_pior_dp_lnk_ctl(struct nouveau_disp *disp, struct dcb_output *outp,
       int head, int lane_nr, int link_bw, bool enh)
{
 struct nouveau_i2c_port *port;
 int ret = -EINVAL;

 port = nv50_pior_dp_find(disp, outp);
 if (port && port->func->lnk_ctl)
  ret = port->func->lnk_ctl(port, lane_nr, link_bw, enh);

 return ret;
}
