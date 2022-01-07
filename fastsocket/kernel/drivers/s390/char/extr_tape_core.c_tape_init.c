
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_EVENT (int,char*) ;
 int TAPE_DBF_AREA ;
 int debug_register (char*,int,int,int) ;
 int debug_register_view (int ,int *) ;
 int debug_set_level (int ,int) ;
 int debug_sprintf_view ;
 int tape_proc_init () ;
 int tapeblock_init () ;
 int tapechar_init () ;

__attribute__((used)) static int
tape_init (void)
{
 TAPE_DBF_AREA = debug_register ( "tape", 2, 2, 4*sizeof(long));
 debug_register_view(TAPE_DBF_AREA, &debug_sprintf_view);



 DBF_EVENT(3, "tape init\n");
 tape_proc_init();
 tapechar_init ();
 tapeblock_init ();
 return 0;
}
