
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int wled_status; } ;


 int WLED_ON ;
 TYPE_2__* hotk ;
 int read_led (int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
proc_read_wled(char *page, char **start, off_t off, int count, int *eof,
        void *data)
{
 return sprintf(page, "%d\n",
         read_led(hotk->methods->wled_status, WLED_ON));
}
