
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microcode_header_intel {int rev; } ;



__attribute__((used)) static inline int
update_match_revision(struct microcode_header_intel *mc_header, int rev)
{
 return (mc_header->rev <= rev) ? 0 : 1;
}
