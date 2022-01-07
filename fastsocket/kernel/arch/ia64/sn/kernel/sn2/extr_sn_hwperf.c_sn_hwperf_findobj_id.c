
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_hwperf_object_info {int id; } ;



__attribute__((used)) static struct sn_hwperf_object_info *
sn_hwperf_findobj_id(struct sn_hwperf_object_info *objbuf,
 int nobj, int id)
{
 int i;
 struct sn_hwperf_object_info *p = objbuf;

 for (i=0; i < nobj; i++, p++) {
  if (p->id == id)
   return p;
 }

 return ((void*)0);

}
