
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {char* init_str; int count_lock; int chan_list; int * tty; int valid; } ;


 int CONFIG_CHUNK (char*,int,int,char*,int) ;
 int chan_config_string (int *,char*,int,char**) ;
 int simple_strtoul (char*,char**,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int line_get_config(char *name, struct line *lines, unsigned int num, char *str,
      int size, char **error_out)
{
 struct line *line;
 char *end;
 int dev, n = 0;

 dev = simple_strtoul(name, &end, 0);
 if ((*end != '\0') || (end == name)) {
  *error_out = "line_get_config failed to parse device number";
  return 0;
 }

 if ((dev < 0) || (dev >= num)) {
  *error_out = "device number out of range";
  return 0;
 }

 line = &lines[dev];

 spin_lock(&line->count_lock);
 if (!line->valid)
  CONFIG_CHUNK(str, size, n, "none", 1);
 else if (line->tty == ((void*)0))
  CONFIG_CHUNK(str, size, n, line->init_str, 1);
 else n = chan_config_string(&line->chan_list, str, size, error_out);
 spin_unlock(&line->count_lock);

 return n;
}
