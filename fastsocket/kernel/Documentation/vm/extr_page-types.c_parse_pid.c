
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int EXIT_FAILURE ;
 size_t MAX_VMAS ;
 int O_RDONLY ;
 int checked_open (char*,int ) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t nr_vmas ;
 int opt_pid ;
 unsigned long page_size ;
 int pagemap_fd ;
 int parse_number (char const*) ;
 int perror (char*) ;
 unsigned long* pg_end ;
 unsigned long* pg_start ;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,unsigned long*,unsigned long*,char*,char*,char*,char*,unsigned long long*,int*,int*,unsigned long*) ;
 int stderr ;

__attribute__((used)) static void parse_pid(const char *str)
{
 FILE *file;
 char buf[5000];

 opt_pid = parse_number(str);

 sprintf(buf, "/proc/%d/pagemap", opt_pid);
 pagemap_fd = checked_open(buf, O_RDONLY);

 sprintf(buf, "/proc/%d/maps", opt_pid);
 file = fopen(buf, "r");
 if (!file) {
  perror(buf);
  exit(EXIT_FAILURE);
 }

 while (fgets(buf, sizeof(buf), file) != ((void*)0)) {
  unsigned long vm_start;
  unsigned long vm_end;
  unsigned long long pgoff;
  int major, minor;
  char r, w, x, s;
  unsigned long ino;
  int n;

  n = sscanf(buf, "%lx-%lx %c%c%c%c %llx %x:%x %lu",
      &vm_start,
      &vm_end,
      &r, &w, &x, &s,
      &pgoff,
      &major, &minor,
      &ino);
  if (n < 10) {
   fprintf(stderr, "unexpected line: %s\n", buf);
   continue;
  }
  pg_start[nr_vmas] = vm_start / page_size;
  pg_end[nr_vmas] = vm_end / page_size;
  if (++nr_vmas >= MAX_VMAS) {
   fprintf(stderr, "too many VMAs\n");
   break;
  }
 }
 fclose(file);
}
