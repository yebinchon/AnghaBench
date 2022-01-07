
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int valid_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {unsigned int repeat_count; int list; int qlen; struct dm_path* path; } ;
struct dm_path {struct path_info* pscontext; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int QL_MIN_IO ;
 int atomic_set (int *,int ) ;
 struct path_info* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sscanf (char*,char*,unsigned int*,char*) ;

__attribute__((used)) static int ql_add_path(struct path_selector *ps, struct dm_path *path,
         int argc, char **argv, char **error)
{
 struct selector *s = ps->context;
 struct path_info *pi;
 unsigned repeat_count = QL_MIN_IO;
 char dummy;






 if (argc > 1) {
  *error = "queue-length ps: incorrect number of arguments";
  return -EINVAL;
 }

 if ((argc == 1) && (sscanf(argv[0], "%u%c", &repeat_count, &dummy) != 1)) {
  *error = "queue-length ps: invalid repeat count";
  return -EINVAL;
 }


 pi = kmalloc(sizeof(*pi), GFP_KERNEL);
 if (!pi) {
  *error = "queue-length ps: Error allocating path information";
  return -ENOMEM;
 }

 pi->path = path;
 pi->repeat_count = repeat_count;
 atomic_set(&pi->qlen, 0);

 path->pscontext = pi;

 list_add_tail(&pi->list, &s->valid_paths);

 return 0;
}
