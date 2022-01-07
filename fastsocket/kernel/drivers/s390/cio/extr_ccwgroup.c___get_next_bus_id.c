
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCW_BUS_ID_SIZE ;
 int EINVAL ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int __get_next_bus_id(const char **buf, char *bus_id)
{
 int rc, len;
 char *start, *end;

 start = (char *)*buf;
 end = strchr(start, ',');
 if (!end) {

  end = strchr(start, '\n');
  if (end)
   *end = '\0';
  len = strlen(start) + 1;
 } else {
  len = end - start + 1;
  end++;
 }
 if (len < CCW_BUS_ID_SIZE) {
  strlcpy(bus_id, start, len);
  rc = 0;
 } else
  rc = -EINVAL;
 *buf = end;
 return rc;
}
