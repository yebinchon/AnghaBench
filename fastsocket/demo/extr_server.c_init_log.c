
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int dup (int ) ;
 int dup2 (int ,int ) ;
 int exit_cleanup () ;
 int fileno (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 scalar_t__ log_file ;
 char* log_path ;
 int perror (char*) ;
 int pfd ;
 int print_d (char*) ;
 int printf (char*,char*) ;
 scalar_t__ specified_log_file ;

void init_log(void)
{
 if (specified_log_file) {
  log_file = fopen(log_path, "a");
  if (!log_file)
   perror("Open log file failed");
  printf("Using specified log file %s\n\n", log_path);
 }

 if (!log_file) {
  log_file = fopen("demo.log", "a");
  if (!log_file) {
   perror("Open log file failed");
   exit_cleanup();
  } else {
   printf("Using default log file %s\n\n", "./demo.log");
  }
 }

 pfd = dup(STDERR_FILENO);

 dup2(fileno(log_file), STDOUT_FILENO);
 dup2(fileno(log_file), STDERR_FILENO);

 print_d("Log starts\n");
}
