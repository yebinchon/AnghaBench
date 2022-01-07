
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EFAULT ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENETDOWN ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 int ETIMEDOUT ;

int enic_dev_status_to_errno(int devcmd_status)
{
 switch (devcmd_status) {
 case 128:
  return 0;
 case 135:
  return -EINVAL;
 case 137:
  return -EFAULT;
 case 130:
  return -EPERM;
 case 139:
  return -EBUSY;
 case 138:
 case 131:
  return -EOPNOTSUPP;
 case 140:
  return -EINVAL;
 case 132:
  return -ENOMEM;
 case 129:
  return -ETIMEDOUT;
 case 134:
  return -ENETDOWN;
 case 136:
  return -EINPROGRESS;
 case 133:
 default:
  return (devcmd_status < 0) ? devcmd_status : -1;
 }
}
