
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int kfree (char**) ;
 char** kmalloc (unsigned int,int ) ;
 int memcpy (char**,char**,unsigned int) ;

__attribute__((used)) static char **realloc_argv(unsigned *array_size, char **old_argv)
{
 char **argv;
 unsigned new_size;

 new_size = *array_size ? *array_size * 2 : 64;
 argv = kmalloc(new_size * sizeof(*argv), GFP_KERNEL);
 if (argv) {
  memcpy(argv, old_argv, *array_size * sizeof(*argv));
  *array_size = new_size;
 }

 kfree(old_argv);
 return argv;
}
