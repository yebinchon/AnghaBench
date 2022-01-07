
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ACR ;
 size_t B ;
 size_t DIRB ;
 size_t IER ;
 size_t IFR ;
 size_t SR ;
 int SR_CTRL ;
 int SR_EXT ;
 int SR_INT ;
 int TACK ;
 int TIP ;
 int TREQ ;
 int WAIT_FOR (int,char*) ;
 int in_8 (int *) ;
 int mdelay (int) ;
 int out_8 (int *,int) ;
 int * via ;

__attribute__((used)) static int
cuda_init_via(void)
{
    out_8(&via[DIRB], (in_8(&via[DIRB]) | TACK | TIP) & ~TREQ);
    out_8(&via[B], in_8(&via[B]) | TACK | TIP);
    out_8(&via[ACR] ,(in_8(&via[ACR]) & ~SR_CTRL) | SR_EXT);
    (void)in_8(&via[SR]);




    out_8(&via[IER], SR_INT);



    mdelay(4);
    (void)in_8(&via[SR]);
    out_8(&via[IFR], SR_INT);


    out_8(&via[B], in_8(&via[B]) & ~TACK);


    WAIT_FOR((in_8(&via[B]) & TREQ) == 0, "CUDA response to sync");


    WAIT_FOR(in_8(&via[IFR]) & SR_INT, "CUDA response to sync (2)");
    (void)in_8(&via[SR]);
    out_8(&via[IFR], SR_INT);


    out_8(&via[B], in_8(&via[B]) | TACK);


    WAIT_FOR(in_8(&via[B]) & TREQ, "CUDA response to sync (3)");
    WAIT_FOR(in_8(&via[IFR]) & SR_INT, "CUDA response to sync (4)");
    (void)in_8(&via[SR]);
    out_8(&via[IFR], SR_INT);
    out_8(&via[B], in_8(&via[B]) | TIP);

    return 0;
}
