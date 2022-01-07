
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_devmap {int dummy; } ;


 int DASD_BUS_ID_SIZE ;
 int DASD_FEATURE_INITIAL_ONLINE ;
 int EINVAL ;
 char* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_add_busid (char*,int) ;
 int dasd_busid (char**,int*,int*,int*) ;
 int dasd_feature_list (char*,char**) ;
 int pr_err (char*,char*) ;
 int pr_warning (char*,char*) ;
 int sprintf (char*,char*,int,int,int ) ;

__attribute__((used)) static char *
dasd_parse_range( char *parsestring ) {

 struct dasd_devmap *devmap;
 int from, from_id0, from_id1;
 int to, to_id0, to_id1;
 int features, rc;
 char bus_id[DASD_BUS_ID_SIZE+1], *str;

 str = parsestring;
 rc = dasd_busid(&str, &from_id0, &from_id1, &from);
 if (rc == 0) {
  to = from;
  to_id0 = from_id0;
  to_id1 = from_id1;
  if (*str == '-') {
   str++;
   rc = dasd_busid(&str, &to_id0, &to_id1, &to);
  }
 }
 if (rc == 0 &&
     (from_id0 != to_id0 || from_id1 != to_id1 || from > to))
  rc = -EINVAL;
 if (rc) {
  pr_err("%s is not a valid device range\n", parsestring);
  return ERR_PTR(rc);
 }
 features = dasd_feature_list(str, &str);
 if (features < 0)
  return ERR_PTR(-EINVAL);

 features |= DASD_FEATURE_INITIAL_ONLINE;
 while (from <= to) {
  sprintf(bus_id, "%01x.%01x.%04x",
   from_id0, from_id1, from++);
  devmap = dasd_add_busid(bus_id, features);
  if (IS_ERR(devmap))
   return (char *)devmap;
 }
 if (*str == ',')
  return str + 1;
 if (*str == '\0')
  return str;
 pr_warning("The dasd= parameter value %s has an invalid ending\n",
     str);
 return ERR_PTR(-EINVAL);
}
