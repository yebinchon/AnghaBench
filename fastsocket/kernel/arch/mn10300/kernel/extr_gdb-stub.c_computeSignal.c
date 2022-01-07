
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct excep_to_sig_map {int signo; int excep; } ;
typedef enum exception_code { ____Placeholder_exception_code } exception_code ;


 int SIGHUP ;
 struct excep_to_sig_map* excep_to_sig_map ;

__attribute__((used)) static int computeSignal(enum exception_code excep)
{
 const struct excep_to_sig_map *map;

 for (map = excep_to_sig_map; map->signo; map++)
  if (map->excep == excep)
   return map->signo;

 return SIGHUP;
}
