
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ppp_net {int all_ppp_mutex; } ;
struct TYPE_6__ {scalar_t__ hdrlen; int refcnt; } ;
struct ppp {TYPE_3__ file; int n_channels; int channels; TYPE_2__* dev; } ;
struct TYPE_4__ {scalar_t__ hdrlen; } ;
struct channel {int upl; struct ppp* ppp; int clist; TYPE_1__ file; int chan_net; } ;
struct TYPE_5__ {int hard_header_len; } ;


 int EINVAL ;
 int ENXIO ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ppp* ppp_find_unit (struct ppp_net*,int) ;
 int ppp_lock (struct ppp*) ;
 struct ppp_net* ppp_pernet (int ) ;
 int ppp_unlock (struct ppp*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int
ppp_connect_channel(struct channel *pch, int unit)
{
 struct ppp *ppp;
 struct ppp_net *pn;
 int ret = -ENXIO;
 int hdrlen;

 pn = ppp_pernet(pch->chan_net);

 mutex_lock(&pn->all_ppp_mutex);
 ppp = ppp_find_unit(pn, unit);
 if (!ppp)
  goto out;
 write_lock_bh(&pch->upl);
 ret = -EINVAL;
 if (pch->ppp)
  goto outl;

 ppp_lock(ppp);
 if (pch->file.hdrlen > ppp->file.hdrlen)
  ppp->file.hdrlen = pch->file.hdrlen;
 hdrlen = pch->file.hdrlen + 2;
 if (hdrlen > ppp->dev->hard_header_len)
  ppp->dev->hard_header_len = hdrlen;
 list_add_tail(&pch->clist, &ppp->channels);
 ++ppp->n_channels;
 pch->ppp = ppp;
 atomic_inc(&ppp->file.refcnt);
 ppp_unlock(ppp);
 ret = 0;

 outl:
 write_unlock_bh(&pch->upl);
 out:
 mutex_unlock(&pn->all_ppp_mutex);
 return ret;
}
