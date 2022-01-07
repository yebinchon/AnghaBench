
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_standard {int id; } ;


 struct v4l2_standard* generic_standards ;
 unsigned int generic_standards_cnt ;

__attribute__((used)) static struct v4l2_standard *match_std(v4l2_std_id id)
{
 unsigned int idx;
 for (idx = 0; idx < generic_standards_cnt; idx++) {
  if (generic_standards[idx].id & id) {
   return generic_standards + idx;
  }
 }
 return ((void*)0);
}
