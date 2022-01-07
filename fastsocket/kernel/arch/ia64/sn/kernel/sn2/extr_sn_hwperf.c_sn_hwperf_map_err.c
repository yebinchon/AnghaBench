
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
__attribute__((used)) static int sn_hwperf_map_err(int hwperf_err)
{
 int e;

 switch(hwperf_err) {
 case 129:
  e = 0;
  break;

 case 131:
  e = -ENOMEM;
  break;

 case 130:
  e = -EPERM;
  break;

 case 132:
  e = -EIO;
  break;

 case 134:
  e = -EBUSY;
  break;

 case 128:
  e = -EAGAIN;
  break;

 case 133:
 default:
  e = -EINVAL;
  break;
 }

 return e;
}
