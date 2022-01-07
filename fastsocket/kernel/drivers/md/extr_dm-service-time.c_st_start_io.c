
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_selector {int dummy; } ;
struct path_info {int in_flight_size; } ;
struct dm_path {struct path_info* pscontext; } ;


 int atomic_add (size_t,int *) ;

__attribute__((used)) static int st_start_io(struct path_selector *ps, struct dm_path *path,
         size_t nr_bytes)
{
 struct path_info *pi = path->pscontext;

 atomic_add(nr_bytes, &pi->in_flight_size);

 return 0;
}
