
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char* name; scalar_t__ end; scalar_t__ start; struct resource* sibling; struct resource* child; } ;
typedef int off_t ;


 int sprintf (char*,char*,unsigned long,unsigned long,char const*) ;

__attribute__((used)) static int
ioremap_proc_info(char *buf, char **start, off_t fpos, int length, int *eof,
    void *data)
{
 char *p = buf, *e = buf + length;
 struct resource *r;
 const char *nm;

 for (r = ((struct resource *)data)->child; r != ((void*)0); r = r->sibling) {
  if (p + 32 >= e)
   break;
  nm = r->name;
  if (nm == ((void*)0))
   nm = "???";

  p += sprintf(p, "%08lx-%08lx: %s\n",
        (unsigned long)r->start,
        (unsigned long)r->end, nm);
 }

 return p-buf;
}
