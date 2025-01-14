
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int init_str; } ;
struct chan_opts {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kstrdup (char*,int ) ;
 int line_setup (struct line*,unsigned int,char*,char**) ;
 int parse_chan_pair (int ,struct line*,int,struct chan_opts const*,char**) ;

int line_config(struct line *lines, unsigned int num, char *str,
  const struct chan_opts *opts, char **error_out)
{
 struct line *line;
 char *new;
 int n;

 if (*str == '=') {
  *error_out = "Can't configure all devices from mconsole";
  return -EINVAL;
 }

 new = kstrdup(str, GFP_KERNEL);
 if (new == ((void*)0)) {
  *error_out = "Failed to allocate memory";
  return -ENOMEM;
 }
 n = line_setup(lines, num, new, error_out);
 if (n < 0)
  return n;

 line = &lines[n];
 return parse_chan_pair(line->init_str, line, n, opts, error_out);
}
