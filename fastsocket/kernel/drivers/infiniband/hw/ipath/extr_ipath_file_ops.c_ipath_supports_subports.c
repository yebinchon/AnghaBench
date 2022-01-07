
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ipath_supports_subports(int user_swmajor, int user_swminor)
{

 return (user_swmajor > 1) || (user_swminor >= 3);
}
