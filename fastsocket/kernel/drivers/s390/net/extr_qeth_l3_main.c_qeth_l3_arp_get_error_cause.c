
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int EOPNOTSUPP ;






__attribute__((used)) static const char *qeth_l3_arp_get_error_cause(int *rc)
{
 switch (*rc) {
 case 132:
  *rc = -EIO;
  return "operation failed";
 case 131:
  *rc = -EOPNOTSUPP;
  return "operation not supported";
 case 130:
  *rc = -EINVAL;
  return "argument out of range";
 case 129:
  *rc = -EOPNOTSUPP;
  return "query operation not supported";
 case 128:
  *rc = -ENOENT;
  return "no query data available";
 default:
  return "unknown error";
 }
}
