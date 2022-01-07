
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; int num_discard_requests; } ;


 int EINVAL ;

__attribute__((used)) static int zero_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 if (argc != 0) {
  ti->error = "No arguments required";
  return -EINVAL;
 }




 ti->num_discard_requests = 1;

 return 0;
}
