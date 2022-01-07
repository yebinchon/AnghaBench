
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int DI_format (int,unsigned short,int,char*,int ) ;

__attribute__((used)) static void DI_format_locked (unsigned short id,
                       int type,
                       char *format,
                       va_list argument_list) {
  DI_format (1, id, type, format, argument_list);
}
