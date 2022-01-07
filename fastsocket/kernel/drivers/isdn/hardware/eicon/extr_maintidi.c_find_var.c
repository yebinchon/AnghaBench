
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path_length; } ;
typedef TYPE_1__ diva_man_var_header_t ;


 TYPE_1__* get_next_var (TYPE_1__*) ;
 int strncmp (char const*,char const*,int ) ;

__attribute__((used)) static diva_man_var_header_t* find_var (diva_man_var_header_t* pVar,
                    const char* name) {
 const char* path;

 do {
  path = (char*)&pVar->path_length+1;

  if (!strncmp (name, path, pVar->path_length)) {
   break;
  }
 } while ((pVar = get_next_var (pVar)));

 return (pVar);
}
