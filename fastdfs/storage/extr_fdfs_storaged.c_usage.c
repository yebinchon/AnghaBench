
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void usage(const char *program)
{
 fprintf(stderr, "Usage: %s <config_file> [start | stop | restart]\n",
  program);
}
