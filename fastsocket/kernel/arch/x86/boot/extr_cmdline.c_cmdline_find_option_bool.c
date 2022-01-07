
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int addr_t ;
struct TYPE_3__ {int cmd_line_ptr; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 TYPE_2__ boot_params ;
 int myisspace (char) ;
 char rdfs8 (int ) ;
 int set_fs (int) ;

int cmdline_find_option_bool(const char *option)
{
 u32 cmdline_ptr = boot_params.hdr.cmd_line_ptr;
 addr_t cptr;
 char c;
 int pos = 0, wstart = 0;
 const char *opptr = ((void*)0);
 enum {
  st_wordstart,
  st_wordcmp,
  st_wordskip,
 } state = st_wordstart;

 if (!cmdline_ptr || cmdline_ptr >= 0x100000)
  return -1;

 cptr = cmdline_ptr & 0xf;
 set_fs(cmdline_ptr >> 4);

 while (cptr < 0x10000) {
  c = rdfs8(cptr++);
  pos++;

  switch (state) {
  case st_wordstart:
   if (!c)
    return 0;
   else if (myisspace(c))
    break;

   state = st_wordcmp;
   opptr = option;
   wstart = pos;


  case st_wordcmp:
   if (!*opptr)
    if (!c || myisspace(c))
     return wstart;
    else
     state = st_wordskip;
   else if (!c)
    return 0;
   else if (c != *opptr++)
    state = st_wordskip;
   break;

  case st_wordskip:
   if (!c)
    return 0;
   else if (myisspace(c))
    state = st_wordstart;
   break;
  }
 }

 return 0;
}
