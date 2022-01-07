
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe {int uid; } ;


 struct vpe* get_vpe (int) ;

int vpe_getuid(int index)
{
 struct vpe *v;

 if ((v = get_vpe(index)) == ((void*)0))
  return -1;

 return v->uid;
}
