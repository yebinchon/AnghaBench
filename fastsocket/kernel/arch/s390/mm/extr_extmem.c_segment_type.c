
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcss_segment {int vm_segtype; int dcss_name; } ;


 int ENOSYS ;
 int MACHINE_IS_VM ;
 int dcss_mkname (char*,int ) ;
 int query_segment_type (struct dcss_segment*) ;

int
segment_type (char* name)
{
 int rc;
 struct dcss_segment seg;

 if (!MACHINE_IS_VM)
  return -ENOSYS;

 dcss_mkname(name, seg.dcss_name);
 rc = query_segment_type (&seg);
 if (rc < 0)
  return rc;
 return seg.vm_segtype;
}
