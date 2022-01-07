
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;







int ehca2ib_return_code(u64 ehca_rc)
{
 switch (ehca_rc) {
 case 128:
  return 0;
 case 129:
 case 133:
  return -EBUSY;
 case 131:
 case 132:
 case 130:
  return -ENOMEM;
 default:
  return -EINVAL;
 }
}
