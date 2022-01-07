
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq {int dummy; } ;
struct TYPE_2__ {int (* exch_done ) (struct fc_seq*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame_header {size_t fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc4_prov {int module; int (* recv ) (struct fc_lport*,struct fc_frame*) ;} ;


 size_t FC_FC4_PROV_SIZE ;
 int FC_LPORT_DBG (struct fc_lport*,char*,size_t) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 int * fc_passive_prov ;
 struct fc_seq* fr_seq (struct fc_frame*) ;
 int module_put (int ) ;
 struct fc4_prov* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;
 int stub2 (struct fc_seq*) ;
 int try_module_get (int ) ;

__attribute__((used)) static void fc_lport_recv_req(struct fc_lport *lport,
         struct fc_frame *fp)
{
 struct fc_frame_header *fh = fc_frame_header_get(fp);
 struct fc_seq *sp = fr_seq(fp);
 struct fc4_prov *prov;
 rcu_read_lock();
 if (fh->fh_type >= FC_FC4_PROV_SIZE)
  goto drop;
 prov = rcu_dereference(fc_passive_prov[fh->fh_type]);
 if (!prov || !try_module_get(prov->module))
  goto drop;
 rcu_read_unlock();
 prov->recv(lport, fp);
 module_put(prov->module);
 return;
drop:
 rcu_read_unlock();
 FC_LPORT_DBG(lport, "dropping unexpected frame type %x\n", fh->fh_type);
 fc_frame_free(fp);
 lport->tt.exch_done(sp);
}
