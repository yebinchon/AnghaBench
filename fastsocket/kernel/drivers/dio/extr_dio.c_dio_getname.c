
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; char const* name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* names ;
 char const* unknowndioname ;

__attribute__((used)) static const char *dio_getname(int id)
{

 unsigned int i;
 for (i = 0; i < ARRAY_SIZE(names); i++)
                if (names[i].id == id)
                        return names[i].name;

        return unknowndioname;
}
