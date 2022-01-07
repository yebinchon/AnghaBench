
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int track; } ;


 int STRETCH (int ) ;
 int _floppy ;
 int buffer_track ;
 int debugt (char*) ;
 int floppy_start () ;
 TYPE_1__ format_req ;
 int setup_format_params (int) ;

__attribute__((used)) static void redo_format(void)
{
 buffer_track = -1;
 setup_format_params(format_req.track << STRETCH(_floppy));
 floppy_start();
 debugt("queue format request");
}
