
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int code; char* text; } ;
typedef TYPE_1__ twa_message_type ;



__attribute__((used)) static char *twa_string_lookup(twa_message_type *table, unsigned int code)
{
 int index;

 for (index = 0; ((code != table[index].code) &&
        (table[index].text != (char *)0)); index++);
 return(table[index].text);
}
