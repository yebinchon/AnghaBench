
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dm_thin_id ;


 int DMWARN (char*,char*) ;
 int EINVAL ;
 scalar_t__ MAX_DEV_ID ;
 int kstrtoull (char*,int,unsigned long long*) ;

__attribute__((used)) static int read_dev_id(char *arg, dm_thin_id *dev_id, int warning)
{
 if (!kstrtoull(arg, 10, (unsigned long long *)dev_id) &&
     *dev_id <= MAX_DEV_ID)
  return 0;

 if (warning)
  DMWARN("Message received with invalid device id: %s", arg);

 return -EINVAL;
}
