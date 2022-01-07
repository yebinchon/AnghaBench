
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAGAIN ;
 int EBUSY ;
 int ECONNRESET ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int EPERM ;
 int EPROTO ;
 int c2_wr_get_result (void*) ;

__attribute__((used)) static inline int c2_errno(void *reply)
{
 switch (c2_wr_get_result(reply)) {
 case 152:
  return 0;
 case 133:
 case 146:
 case 128:
  return -ENOMEM;
 case 135:
 case 132:
  return -EBUSY;
 case 150:
  return -EADDRINUSE;
 case 149:
  return -EADDRNOTAVAIL;
 case 147:
  return -ECONNRESET;
 case 134:
 case 136:
  return -ENOSYS;
 case 131:
  return -EPERM;
 case 130:
  return -EPROTO;
 case 151:
 case 148:
  return -EFAULT;
 case 129:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
  return -EINVAL;
 default:
  return -EAGAIN;
 }
}
