
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osst_tape {TYPE_1__* drive; } ;
struct TYPE_2__ {char* disk_name; } ;



__attribute__((used)) static inline char *tape_name(struct osst_tape *tape)
{
 return tape->drive->disk_name;
}
