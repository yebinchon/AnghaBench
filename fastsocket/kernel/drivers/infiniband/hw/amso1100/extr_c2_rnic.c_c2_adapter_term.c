
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wr ;
typedef union c2wr {int dummy; } c2wr ;
struct TYPE_2__ {scalar_t__ context; } ;
struct c2wr_init_req {TYPE_1__ hdr; } ;
struct c2_dev {scalar_t__ init; } ;


 int CCWR_TERM ;
 int c2_wr_set_id (struct c2wr_init_req*,int ) ;
 int memset (struct c2wr_init_req*,int ,int) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;

__attribute__((used)) static void c2_adapter_term(struct c2_dev *c2dev)
{
 struct c2wr_init_req wr;

 memset(&wr, 0, sizeof(wr));
 c2_wr_set_id(&wr, CCWR_TERM);
 wr.hdr.context = 0;


 vq_send_wr(c2dev, (union c2wr *) & wr);
 c2dev->init = 0;

 return;
}
