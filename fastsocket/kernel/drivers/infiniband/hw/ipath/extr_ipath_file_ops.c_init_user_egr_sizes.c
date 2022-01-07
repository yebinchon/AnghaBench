
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_portdata {unsigned int port_rcvegrbuf_chunks; unsigned int port_rcvegrbufs_perchunk; unsigned int port_rcvegrbuf_size; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {unsigned int ipath_rcvegrbufsize; unsigned int ipath_rcvegrcnt; } ;



__attribute__((used)) static void init_user_egr_sizes(struct ipath_portdata *pd)
{
 struct ipath_devdata *dd = pd->port_dd;
 unsigned egrperchunk, egrcnt, size;
 size = 0x8000;
 egrperchunk = size / dd->ipath_rcvegrbufsize;
 egrcnt = dd->ipath_rcvegrcnt;
 pd->port_rcvegrbuf_chunks = (egrcnt + egrperchunk - 1) / egrperchunk;
 pd->port_rcvegrbufs_perchunk = egrperchunk;
 pd->port_rcvegrbuf_size = size;
}
