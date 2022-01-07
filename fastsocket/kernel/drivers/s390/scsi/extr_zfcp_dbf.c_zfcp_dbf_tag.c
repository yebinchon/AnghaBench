
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFCP_DBF_TAG_SIZE ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void zfcp_dbf_tag(char **p, const char *label, const char *tag)
{
 int i;

 *p += sprintf(*p, "%-24s", label);
 for (i = 0; i < ZFCP_DBF_TAG_SIZE; i++)
  *p += sprintf(*p, "%c", tag[i]);
 *p += sprintf(*p, "\n");
}
