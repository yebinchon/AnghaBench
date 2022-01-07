
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vpe* vpe_handle ;
struct vpe {unsigned long __start; } ;


 int vpe_run (struct vpe*) ;

int vpe_start(vpe_handle vpe, unsigned long start)
{
 struct vpe *v = vpe;

 v->__start = start;
 return vpe_run(v);
}
