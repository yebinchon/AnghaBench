
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {scalar_t__ raw; } ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static void format_gid(union ib_gid *gid, char *buf)
{
 int i, n;

 for (n = 0, i = 0; i < 8; ++i) {
  n += sprintf(buf + n, "%x",
        be16_to_cpu(((__be16 *) gid->raw)[i]));
  if (i < 7)
   buf[n++] = ':';
 }
}
