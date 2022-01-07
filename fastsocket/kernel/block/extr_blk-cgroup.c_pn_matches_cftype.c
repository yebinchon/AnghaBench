
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cftype {int private; } ;
struct blkio_policy_node {int plid; int fileid; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;


 int BLKIOFILE_ATTR (int ) ;
 int BLKIOFILE_POLICY (int ) ;

__attribute__((used)) static inline bool pn_matches_cftype(struct cftype *cft,
   struct blkio_policy_node *pn)
{
 enum blkio_policy_id plid = BLKIOFILE_POLICY(cft->private);
 int fileid = BLKIOFILE_ATTR(cft->private);

 return (plid == pn->plid && fileid == pn->fileid);
}
