
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {char* name; } ;
typedef int FILE ;


 int fatal (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static void set_obj(struct slabinfo *s, const char *name, int n)
{
 char x[100];
 FILE *f;

 snprintf(x, 100, "%s/%s", s->name, name);
 f = fopen(x, "w");
 if (!f)
  fatal("Cannot write to %s\n", x);

 fprintf(f, "%d\n", n);
 fclose(f);
}
