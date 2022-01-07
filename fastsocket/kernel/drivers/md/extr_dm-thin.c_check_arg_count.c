
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMWARN (char*,unsigned int,unsigned int) ;
 int EINVAL ;

__attribute__((used)) static int check_arg_count(unsigned argc, unsigned args_required)
{
 if (argc != args_required) {
  DMWARN("Message received with %u arguments instead of %u.",
         argc, args_required);
  return -EINVAL;
 }

 return 0;
}
