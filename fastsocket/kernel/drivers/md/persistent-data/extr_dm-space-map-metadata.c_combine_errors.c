
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int combine_errors(int r1, int r2)
{
 return r1 ? r1 : r2;
}
