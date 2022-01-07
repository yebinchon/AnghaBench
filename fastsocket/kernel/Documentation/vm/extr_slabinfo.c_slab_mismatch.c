
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pattern ;
 int regexec (int *,char*,int ,int *,int ) ;

__attribute__((used)) static int slab_mismatch(char *slab)
{
 return regexec(&pattern, slab, 0, ((void*)0), 0);
}
