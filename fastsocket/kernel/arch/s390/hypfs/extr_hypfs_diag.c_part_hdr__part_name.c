
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_part_hdr {int part_name; } ;
struct part_hdr {int part_name; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;


 int EBCASC (char*,size_t) ;
 int INFO_SIMPLE ;
 size_t LPAR_NAME_LEN ;
 int memcpy (char*,int ,size_t) ;
 int strim (char*) ;

__attribute__((used)) static inline void part_hdr__part_name(enum diag204_format type, void *hdr,
           char *name)
{
 if (type == INFO_SIMPLE)
  memcpy(name, ((struct part_hdr *)hdr)->part_name,
         LPAR_NAME_LEN);
 else
  memcpy(name, ((struct x_part_hdr *)hdr)->part_name,
         LPAR_NAME_LEN);
 EBCASC(name, LPAR_NAME_LEN);
 name[LPAR_NAME_LEN] = 0;
 strim(name);
}
