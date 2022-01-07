
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_selector {int dummy; } ;
struct path_info {int qlen; } ;
struct dm_path {struct path_info* pscontext; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static int ql_start_io(struct path_selector *ps, struct dm_path *path,
         size_t nr_bytes)
{
 struct path_info *pi = path->pscontext;

 atomic_inc(&pi->qlen);

 return 0;
}
