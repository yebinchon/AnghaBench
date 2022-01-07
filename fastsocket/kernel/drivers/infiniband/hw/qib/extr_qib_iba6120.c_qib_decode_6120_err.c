
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {int dummy; } ;


 int ERR_MASK (int ) ;
 int HardwareErr ;
 int IBStatusChanged ;
 int InvalidAddrErr ;
 int QLOGIC_IB_E_PKTERRS ;
 int RcvBadTidErr ;
 int RcvBadVersionErr ;
 int RcvEBPErr ;
 int RcvEgrFullErr ;
 int RcvFormatErr ;
 int RcvHdrErr ;
 int RcvHdrFullErr ;
 int RcvHdrLenErr ;
 int RcvIBFlowErr ;
 int RcvIBLostLinkErr ;
 int RcvICRCErr ;
 int RcvLongPktLenErr ;
 int RcvMaxPktLenErr ;
 int RcvMinPktLenErr ;
 int RcvUnexpectedCharErr ;
 int RcvUnsupportedVLErr ;
 int RcvVCRCErr ;
 int ResetNegated ;
 int SendDroppedSmpPktErr ;
 int SendMaxPktLenErr ;
 int SendMinPktLenErr ;
 int SendPioArmLaunchErr ;
 int SendUnderRunErr ;
 int SendUnexpectedPktNumErr ;
 int SendUnsupportedVLErr ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static int qib_decode_6120_err(struct qib_devdata *dd, char *buf, size_t blen,
          u64 err)
{
 int iserr = 1;

 *buf = '\0';
 if (err & QLOGIC_IB_E_PKTERRS) {
  if (!(err & ~QLOGIC_IB_E_PKTERRS))
   iserr = 0;
  if ((err & ERR_MASK(RcvICRCErr)) &&
      !(err&(ERR_MASK(RcvVCRCErr)|ERR_MASK(RcvEBPErr))))
   strlcat(buf, "CRC ", blen);
  if (!iserr)
   goto done;
 }
 if (err & ERR_MASK(RcvHdrLenErr))
  strlcat(buf, "rhdrlen ", blen);
 if (err & ERR_MASK(RcvBadTidErr))
  strlcat(buf, "rbadtid ", blen);
 if (err & ERR_MASK(RcvBadVersionErr))
  strlcat(buf, "rbadversion ", blen);
 if (err & ERR_MASK(RcvHdrErr))
  strlcat(buf, "rhdr ", blen);
 if (err & ERR_MASK(RcvLongPktLenErr))
  strlcat(buf, "rlongpktlen ", blen);
 if (err & ERR_MASK(RcvMaxPktLenErr))
  strlcat(buf, "rmaxpktlen ", blen);
 if (err & ERR_MASK(RcvMinPktLenErr))
  strlcat(buf, "rminpktlen ", blen);
 if (err & ERR_MASK(SendMinPktLenErr))
  strlcat(buf, "sminpktlen ", blen);
 if (err & ERR_MASK(RcvFormatErr))
  strlcat(buf, "rformaterr ", blen);
 if (err & ERR_MASK(RcvUnsupportedVLErr))
  strlcat(buf, "runsupvl ", blen);
 if (err & ERR_MASK(RcvUnexpectedCharErr))
  strlcat(buf, "runexpchar ", blen);
 if (err & ERR_MASK(RcvIBFlowErr))
  strlcat(buf, "ribflow ", blen);
 if (err & ERR_MASK(SendUnderRunErr))
  strlcat(buf, "sunderrun ", blen);
 if (err & ERR_MASK(SendPioArmLaunchErr))
  strlcat(buf, "spioarmlaunch ", blen);
 if (err & ERR_MASK(SendUnexpectedPktNumErr))
  strlcat(buf, "sunexperrpktnum ", blen);
 if (err & ERR_MASK(SendDroppedSmpPktErr))
  strlcat(buf, "sdroppedsmppkt ", blen);
 if (err & ERR_MASK(SendMaxPktLenErr))
  strlcat(buf, "smaxpktlen ", blen);
 if (err & ERR_MASK(SendUnsupportedVLErr))
  strlcat(buf, "sunsupVL ", blen);
 if (err & ERR_MASK(InvalidAddrErr))
  strlcat(buf, "invalidaddr ", blen);
 if (err & ERR_MASK(RcvEgrFullErr))
  strlcat(buf, "rcvegrfull ", blen);
 if (err & ERR_MASK(RcvHdrFullErr))
  strlcat(buf, "rcvhdrfull ", blen);
 if (err & ERR_MASK(IBStatusChanged))
  strlcat(buf, "ibcstatuschg ", blen);
 if (err & ERR_MASK(RcvIBLostLinkErr))
  strlcat(buf, "riblostlink ", blen);
 if (err & ERR_MASK(HardwareErr))
  strlcat(buf, "hardware ", blen);
 if (err & ERR_MASK(ResetNegated))
  strlcat(buf, "reset ", blen);
done:
 return iserr;
}
