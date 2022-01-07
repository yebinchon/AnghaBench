
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const*,char const*) ;

__attribute__((used)) static void zfcp_dbf_outs(char **buf, const char *s1, const char *s2)
{
 *buf += sprintf(*buf, "%-24s%s\n", s1, s2);
}
