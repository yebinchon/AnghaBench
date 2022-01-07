
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int expand_overloaded_flags (int ) ;
 int opt_raw ;
 int well_known_flags (int ) ;

__attribute__((used)) static uint64_t kpageflags_flags(uint64_t flags)
{
 flags = expand_overloaded_flags(flags);

 if (!opt_raw)
  flags = well_known_flags(flags);

 return flags;
}
