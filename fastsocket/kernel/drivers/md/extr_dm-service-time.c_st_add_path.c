
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int valid_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {unsigned int repeat_count; unsigned int relative_throughput; int list; int in_flight_size; struct dm_path* path; } ;
struct dm_path {struct path_info* pscontext; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int ST_MAX_RELATIVE_THROUGHPUT ;
 unsigned int ST_MIN_IO ;
 int atomic_set (int *,int ) ;
 struct path_info* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sscanf (char*,char*,unsigned int*,char*) ;

__attribute__((used)) static int st_add_path(struct path_selector *ps, struct dm_path *path,
         int argc, char **argv, char **error)
{
 struct selector *s = ps->context;
 struct path_info *pi;
 unsigned repeat_count = ST_MIN_IO;
 unsigned relative_throughput = 1;
 char dummy;
 if (argc > 2) {
  *error = "service-time ps: incorrect number of arguments";
  return -EINVAL;
 }

 if (argc && (sscanf(argv[0], "%u%c", &repeat_count, &dummy) != 1)) {
  *error = "service-time ps: invalid repeat count";
  return -EINVAL;
 }

 if ((argc == 2) &&
     (sscanf(argv[1], "%u%c", &relative_throughput, &dummy) != 1 ||
      relative_throughput > ST_MAX_RELATIVE_THROUGHPUT)) {
  *error = "service-time ps: invalid relative_throughput value";
  return -EINVAL;
 }


 pi = kmalloc(sizeof(*pi), GFP_KERNEL);
 if (!pi) {
  *error = "service-time ps: Error allocating path context";
  return -ENOMEM;
 }

 pi->path = path;
 pi->repeat_count = repeat_count;
 pi->relative_throughput = relative_throughput;
 atomic_set(&pi->in_flight_size, 0);

 path->pscontext = pi;

 list_add_tail(&pi->list, &s->valid_paths);

 return 0;
}
