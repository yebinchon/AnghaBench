
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_session {scalar_t__ send_seq; } ;


 int PPPOL2TP_L2TP_HDR_SIZE_NOSEQ ;
 int PPPOL2TP_L2TP_HDR_SIZE_SEQ ;

__attribute__((used)) static inline int pppol2tp_l2tp_header_len(struct pppol2tp_session *session)
{
 if (session->send_seq)
  return PPPOL2TP_L2TP_HDR_SIZE_SEQ;

 return PPPOL2TP_L2TP_HDR_SIZE_NOSEQ;
}
