
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SETUP_ARGS ;
 int SETUP_BUFFER_SIZE ;
 int done_setup ;
 char** setup_args ;
 char* setup_buffer ;
 scalar_t__* setup_used ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,scalar_t__) ;

__attribute__((used)) static int
wd33c93_setup(char *str)
{
 int i;
 char *p1, *p2;
 p1 = setup_buffer;
 *p1 = '\0';
 if (str)
  strncpy(p1, str, SETUP_BUFFER_SIZE - strlen(setup_buffer));
 setup_buffer[SETUP_BUFFER_SIZE - 1] = '\0';
 p1 = setup_buffer;
 i = 0;
 while (*p1 && (i < MAX_SETUP_ARGS)) {
  p2 = strchr(p1, ',');
  if (p2) {
   *p2 = '\0';
   if (p1 != p2)
    setup_args[i] = p1;
   p1 = p2 + 1;
   i++;
  } else {
   setup_args[i] = p1;
   break;
  }
 }
 for (i = 0; i < MAX_SETUP_ARGS; i++)
  setup_used[i] = 0;
 done_setup = 1;

 return 1;
}
