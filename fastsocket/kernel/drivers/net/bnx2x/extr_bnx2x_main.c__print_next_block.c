
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_cont (char*,char*,char const*) ;

__attribute__((used)) static void _print_next_block(int idx, const char *blk)
{
 pr_cont("%s%s", idx ? ", " : "", blk);
}
