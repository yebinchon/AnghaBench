
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ isspace (char) ;
 char** realloc_argv (unsigned int*,char**) ;
 char* skip_spaces (char*) ;

int dm_split_args(int *argc, char ***argvp, char *input)
{
 char *start, *end = input, *out, **argv = ((void*)0);
 unsigned array_size = 0;

 *argc = 0;

 if (!input) {
  *argvp = ((void*)0);
  return 0;
 }

 argv = realloc_argv(&array_size, argv);
 if (!argv)
  return -ENOMEM;

 while (1) {

  start = skip_spaces(end);

  if (!*start)
   break;


  end = out = start;
  while (*end) {

   if (*end == '\\' && *(end + 1)) {
    *out++ = *(end + 1);
    end += 2;
    continue;
   }

   if (isspace(*end))
    break;

   *out++ = *end++;
  }


  if ((*argc + 1) > array_size) {
   argv = realloc_argv(&array_size, argv);
   if (!argv)
    return -ENOMEM;
  }


  if (*end)
   end++;


  *out = '\0';
  argv[*argc] = start;
  (*argc)++;
 }

 *argvp = argv;
 return 0;
}
