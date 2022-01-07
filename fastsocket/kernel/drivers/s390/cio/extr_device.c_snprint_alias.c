
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device_id {int cu_type; int cu_model; scalar_t__ dev_type; int dev_model; } ;


 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int snprint_alias(char *buf, size_t size,
    struct ccw_device_id *id, const char *suffix)
{
 int len;

 len = snprintf(buf, size, "ccw:t%04Xm%02X", id->cu_type, id->cu_model);
 if (len > size)
  return len;
 buf += len;
 size -= len;

 if (id->dev_type != 0)
  len += snprintf(buf, size, "dt%04Xdm%02X%s", id->dev_type,
    id->dev_model, suffix);
 else
  len += snprintf(buf, size, "dtdm%s", suffix);

 return len;
}
