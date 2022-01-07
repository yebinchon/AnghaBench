
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;

__attribute__((noreturn))
void usage(void)
{
 die("Usage: build [-b] bootsect setup system [rootdev] [> image]");
}
