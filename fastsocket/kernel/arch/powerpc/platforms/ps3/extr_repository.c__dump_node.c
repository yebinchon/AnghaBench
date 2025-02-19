
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int _dump_field (char*,unsigned int,char const*,int) ;
 int pr_debug (char*,char const*,int,unsigned int) ;

__attribute__((used)) static void _dump_node(unsigned int lpar_id, u64 n1, u64 n2, u64 n3, u64 n4,
 u64 v1, u64 v2, const char *func, int line)
{
 pr_debug("%s:%d: lpar: %u\n", func, line, lpar_id);
 _dump_field("n1: ", n1, func, line);
 _dump_field("n2: ", n2, func, line);
 _dump_field("n3: ", n3, func, line);
 _dump_field("n4: ", n4, func, line);
 pr_debug("%s:%d: v1: %016llx\n", func, line, v1);
 pr_debug("%s:%d: v2: %016llx\n", func, line, v2);
}
