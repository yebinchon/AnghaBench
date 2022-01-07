
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debuglevel { ____Placeholder_debuglevel } debuglevel ;
typedef int dbgline ;


 int gig_dbg (int,char*,char const*,char*) ;
 int gigaset_debuglevel ;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;

__attribute__((used)) static inline void dump_bytes(enum debuglevel level, const char *tag,
         unsigned char *bytes, int count)
{
}
