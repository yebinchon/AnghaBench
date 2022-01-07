
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe {char* cwd; } ;


 struct vpe* get_vpe (int) ;

char *vpe_getcwd(int index)
{
 struct vpe *v;

 if ((v = get_vpe(index)) == ((void*)0))
  return ((void*)0);

 return v->cwd;
}
