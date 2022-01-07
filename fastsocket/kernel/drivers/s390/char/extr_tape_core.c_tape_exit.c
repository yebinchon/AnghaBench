
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_EVENT (int,char*) ;
 int TAPE_DBF_AREA ;
 int debug_unregister (int ) ;
 int tape_proc_cleanup () ;
 int tapeblock_exit () ;
 int tapechar_exit () ;

__attribute__((used)) static void
tape_exit(void)
{
 DBF_EVENT(6, "tape exit\n");


 tapechar_exit();
 tapeblock_exit();
 tape_proc_cleanup();
 debug_unregister (TAPE_DBF_AREA);
}
