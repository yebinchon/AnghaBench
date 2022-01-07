
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int sense_rc; int fsm; int id; } ;
typedef int __u8 ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,...) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_DEBUG ;
 int CTC_DBF_WARN ;
 int CTC_EVENT_UC_HWFAIL ;
 int CTC_EVENT_UC_RCRESET ;
 int CTC_EVENT_UC_RSRESET ;
 int CTC_EVENT_UC_RXPARITY ;
 int CTC_EVENT_UC_TXPARITY ;
 int CTC_EVENT_UC_TXTIMEOUT ;
 int CTC_EVENT_UC_UNKNOWN ;
 int CTC_EVENT_UC_ZERO ;
 int SNS0_BUS_OUT_CHECK ;
 int SNS0_CMD_REJECT ;
 int SNS0_EQUIPMENT_CHECK ;
 int SNS0_INTERVENTION_REQ ;
 int TRACE ;
 int fsm_event (int ,int ,struct channel*) ;
 int pr_notice (char*,int ) ;

__attribute__((used)) static inline void ccw_unit_check(struct channel *ch, __u8 sense)
{
 CTCM_DBF_TEXT_(TRACE, CTC_DBF_DEBUG,
   "%s(%s): %02x",
    CTCM_FUNTAIL, ch->id, sense);

 if (sense & SNS0_INTERVENTION_REQ) {
  if (sense & 0x01) {
   if (ch->sense_rc != 0x01) {
    pr_notice(
     "%s: The communication peer has "
     "disconnected\n", ch->id);
    ch->sense_rc = 0x01;
   }
   fsm_event(ch->fsm, CTC_EVENT_UC_RCRESET, ch);
  } else {
   if (ch->sense_rc != SNS0_INTERVENTION_REQ) {
    pr_notice(
     "%s: The remote operating system is "
     "not available\n", ch->id);
    ch->sense_rc = SNS0_INTERVENTION_REQ;
   }
   fsm_event(ch->fsm, CTC_EVENT_UC_RSRESET, ch);
  }
 } else if (sense & SNS0_EQUIPMENT_CHECK) {
  if (sense & SNS0_BUS_OUT_CHECK) {
   if (ch->sense_rc != SNS0_BUS_OUT_CHECK) {
    CTCM_DBF_TEXT_(TRACE, CTC_DBF_WARN,
     "%s(%s): remote HW error %02x",
      CTCM_FUNTAIL, ch->id, sense);
    ch->sense_rc = SNS0_BUS_OUT_CHECK;
   }
   fsm_event(ch->fsm, CTC_EVENT_UC_HWFAIL, ch);
  } else {
   if (ch->sense_rc != SNS0_EQUIPMENT_CHECK) {
    CTCM_DBF_TEXT_(TRACE, CTC_DBF_WARN,
     "%s(%s): remote read parity error %02x",
      CTCM_FUNTAIL, ch->id, sense);
    ch->sense_rc = SNS0_EQUIPMENT_CHECK;
   }
   fsm_event(ch->fsm, CTC_EVENT_UC_RXPARITY, ch);
  }
 } else if (sense & SNS0_BUS_OUT_CHECK) {
  if (ch->sense_rc != SNS0_BUS_OUT_CHECK) {
   CTCM_DBF_TEXT_(TRACE, CTC_DBF_WARN,
    "%s(%s): BUS OUT error %02x",
     CTCM_FUNTAIL, ch->id, sense);
   ch->sense_rc = SNS0_BUS_OUT_CHECK;
  }
  if (sense & 0x04)
   fsm_event(ch->fsm, CTC_EVENT_UC_TXTIMEOUT, ch);
  else
   fsm_event(ch->fsm, CTC_EVENT_UC_TXPARITY, ch);
 } else if (sense & SNS0_CMD_REJECT) {
  if (ch->sense_rc != SNS0_CMD_REJECT) {
   CTCM_DBF_TEXT_(TRACE, CTC_DBF_WARN,
    "%s(%s): Command rejected",
      CTCM_FUNTAIL, ch->id);
   ch->sense_rc = SNS0_CMD_REJECT;
  }
 } else if (sense == 0) {
  CTCM_DBF_TEXT_(TRACE, CTC_DBF_WARN,
   "%s(%s): Unit check ZERO",
     CTCM_FUNTAIL, ch->id);
  fsm_event(ch->fsm, CTC_EVENT_UC_ZERO, ch);
 } else {
  CTCM_DBF_TEXT_(TRACE, CTC_DBF_WARN,
   "%s(%s): Unit check code %02x unknown",
     CTCM_FUNTAIL, ch->id, sense);
  fsm_event(ch->fsm, CTC_EVENT_UC_UNKNOWN, ch);
 }
}
