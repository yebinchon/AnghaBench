
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_match (char const*,char*) ;

__attribute__((used)) static int match_word(const char *word, char **list)
{
 int n;
 for (n=0; list[n]; n++)
  if (cmd_match(word, list[n]))
   break;
 return n;
}
