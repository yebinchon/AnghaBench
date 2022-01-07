
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int tag; TYPE_3__* request; } ;
struct fnic {TYPE_2__* lport; } ;
struct blk_queue_tag {int max_depth; TYPE_3__** tag_index; int tag_map; } ;
struct TYPE_6__ {int tag; struct scsi_cmnd* special; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {struct blk_queue_tag* bqt; } ;


 int BUG_ON (int) ;
 int SCSI_NO_TAG ;
 int find_next_zero_bit (int ,int,int) ;
 int pr_err (char*) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static inline int
fnic_scsi_host_start_tag(struct fnic *fnic, struct scsi_cmnd *sc)
{
 struct blk_queue_tag *bqt = fnic->lport->host->bqt;
 int tag, ret = SCSI_NO_TAG;

 BUG_ON(!bqt);
 if (!bqt) {
  pr_err("Tags are not supported\n");
  goto end;
 }

 do {
  tag = find_next_zero_bit(bqt->tag_map, bqt->max_depth, 1);
  if (tag >= bqt->max_depth) {
   pr_err("Tag allocation failure\n");
   goto end;
  }
 } while (test_and_set_bit(tag, bqt->tag_map));

 bqt->tag_index[tag] = sc->request;
 sc->request->tag = tag;
 sc->tag = tag;
 if (!sc->request->special)
  sc->request->special = sc;

 ret = tag;

end:
 return ret;
}
