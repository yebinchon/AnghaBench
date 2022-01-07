
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx18_api_info {scalar_t__ cmd; } ;


 struct cx18_api_info const* api_info ;

__attribute__((used)) static const struct cx18_api_info *find_api_info(u32 cmd)
{
 int i;

 for (i = 0; api_info[i].cmd; i++)
  if (api_info[i].cmd == cmd)
   return &api_info[i];
 return ((void*)0);
}
