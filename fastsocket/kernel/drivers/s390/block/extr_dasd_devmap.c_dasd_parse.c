
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_ALERT ;
 int DBF_EVENT (int ,char*,char*) ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 char** dasd ;
 char* dasd_parse_next_element (char*) ;

int
dasd_parse(void)
{
 int rc, i;
 char *parsestring;

 rc = 0;
 for (i = 0; i < 256; i++) {
  if (dasd[i] == ((void*)0))
   break;
  parsestring = dasd[i];

  while (*parsestring) {
   parsestring = dasd_parse_next_element(parsestring);
   if(IS_ERR(parsestring)) {
    rc = PTR_ERR(parsestring);
    break;
   }
  }
  if (rc) {
   DBF_EVENT(DBF_ALERT, "%s", "invalid range found");
   break;
  }
 }
 return rc;
}
