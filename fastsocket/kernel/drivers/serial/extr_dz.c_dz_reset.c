
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dz_port {struct dz_mux* mux; } ;
struct dz_mux {int initialised; } ;


 int DZ_CLR ;
 int DZ_CSR ;
 int DZ_MSE ;
 int dz_in (struct dz_port*,int ) ;
 int dz_out (struct dz_port*,int ,int) ;
 int iob () ;

__attribute__((used)) static void dz_reset(struct dz_port *dport)
{
 struct dz_mux *mux = dport->mux;

 if (mux->initialised)
  return;

 dz_out(dport, DZ_CSR, DZ_CLR);
 while (dz_in(dport, DZ_CSR) & DZ_CLR);
 iob();


 dz_out(dport, DZ_CSR, DZ_MSE);

 mux->initialised = 1;
}
