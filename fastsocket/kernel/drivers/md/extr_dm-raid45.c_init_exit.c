
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMERR (char*,char const*,int) ;
 int DMINFO (char*,char const*,int ) ;
 int version ;

__attribute__((used)) static void init_exit(const char *bad_msg, const char *good_msg, int r)
{
 if (r)
  DMERR("Failed to %sregister target [%d]", bad_msg, r);
 else
  DMINFO("%s %s", good_msg, version);
}
