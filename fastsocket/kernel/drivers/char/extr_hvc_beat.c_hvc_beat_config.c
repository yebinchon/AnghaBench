
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hvc_beat_useit ;
 int simple_strtoul (char*,int *,int ) ;

__attribute__((used)) static int hvc_beat_config(char *p)
{
 hvc_beat_useit = simple_strtoul(p, ((void*)0), 0);
 return 0;
}
