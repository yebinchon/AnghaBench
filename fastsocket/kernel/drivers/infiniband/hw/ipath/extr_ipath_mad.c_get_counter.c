
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_ibdev {int ipath_xmit_wait; int dd; int ipath_rpkts; int ipath_spkts; int ipath_rword; int ipath_sword; } ;
struct ipath_cregs {int cr_psxmitwaitcount; int cr_psrcvpktscount; int cr_psxmitpktscount; int cr_psrcvdatacount; int cr_psxmitdatacount; } ;
typedef int __be16 ;







 int ipath_read_creg32 (int ,int ) ;

__attribute__((used)) static u64 get_counter(struct ipath_ibdev *dev,
         struct ipath_cregs const *crp,
         __be16 sel)
{
 u64 ret;

 switch (sel) {
 case 130:
  ret = (crp->cr_psxmitdatacount) ?
   ipath_read_creg32(dev->dd, crp->cr_psxmitdatacount) :
   dev->ipath_sword;
  break;
 case 132:
  ret = (crp->cr_psrcvdatacount) ?
   ipath_read_creg32(dev->dd, crp->cr_psrcvdatacount) :
   dev->ipath_rword;
  break;
 case 129:
  ret = (crp->cr_psxmitpktscount) ?
   ipath_read_creg32(dev->dd, crp->cr_psxmitpktscount) :
   dev->ipath_spkts;
  break;
 case 131:
  ret = (crp->cr_psrcvpktscount) ?
   ipath_read_creg32(dev->dd, crp->cr_psrcvpktscount) :
   dev->ipath_rpkts;
  break;
 case 128:
  ret = (crp->cr_psxmitwaitcount) ?
   ipath_read_creg32(dev->dd, crp->cr_psxmitwaitcount) :
   dev->ipath_xmit_wait;
  break;
 default:
  ret = 0;
 }

 return ret;
}
