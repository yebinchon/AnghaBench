
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int diva_dbg_cmp_key (const char* ref, const char* key) {
 while (*key && (*ref++ == *key++));
  return (!*key && !*ref);
}
