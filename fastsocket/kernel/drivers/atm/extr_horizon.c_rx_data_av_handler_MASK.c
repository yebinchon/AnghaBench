#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_14__ {scalar_t__ traffic_class; size_t max_sdu; } ;
struct TYPE_15__ {TYPE_1__ rxtp; } ;
struct atm_vcc {TYPE_2__ qos; } ;
struct TYPE_16__ {size_t rx_bytes; int /*<<< orphan*/  flags; int /*<<< orphan*/  rx_addr; int /*<<< orphan*/  rx_channel; struct sk_buff* rx_skb; struct atm_vcc** rxer; } ;
typedef  TYPE_3__ hrz_dev ;
struct TYPE_13__ {struct atm_vcc* vcc; } ;

/* Variables and functions */
 scalar_t__ ATM_NONE ; 
 TYPE_12__* FUNC0 (struct sk_buff*) ; 
 int DBG_ERR ; 
 int DBG_FLOW ; 
 int DBG_RX ; 
 int DBG_SKB ; 
 int DBG_VCC ; 
 int DBG_WARN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int RX_COMPLETE_FRAME ; 
 int RX_CRC_32_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,size_t) ; 
 int SIMONS_DODGEY_MARKER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 struct sk_buff* FUNC8 (struct atm_vcc*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_busy ; 
 size_t FUNC10 (int) ; 
 size_t FUNC11 (int) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,size_t) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16 (hrz_dev * dev) {
  u32 rx_queue_entry;
  u32 rx_queue_entry_flags;
  u16 rx_len;
  u16 rx_channel;
  
  FUNC2 (DBG_FLOW, "hrz_data_av_handler");
  
  // try to grab rx lock (not possible during RX bus mastering)
  if (FUNC15 (rx_busy, &dev->flags)) {
    FUNC2 (DBG_RX, "locked out of rx lock");
    return;
  }
  FUNC2 (DBG_RX, "set rx_busy for dev %p", dev);
  // lock is cleared if we fail now, o/w after bus master completion
  
  FUNC6(dev);
  
  rx_queue_entry = FUNC12 (dev);
  
  rx_len = FUNC10 (rx_queue_entry);
  rx_channel = FUNC11 (rx_queue_entry);
  
  FUNC5 (dev);
  
  FUNC4 (dev, rx_channel);
  
  FUNC2 (DBG_RX, "rx_queue_entry is: %#x", rx_queue_entry);
  rx_queue_entry_flags = rx_queue_entry & (RX_CRC_32_OK|RX_COMPLETE_FRAME|SIMONS_DODGEY_MARKER);
  
  if (!rx_len) {
    // (at least) bus-mastering breaks if we try to handle a
    // zero-length frame, besides AAL5 does not support them
    FUNC3 (KERN_ERR, "zero-length frame!");
    rx_queue_entry_flags &= ~RX_COMPLETE_FRAME;
  }
  
  if (rx_queue_entry_flags & SIMONS_DODGEY_MARKER) {
    FUNC2 (DBG_RX|DBG_ERR, "Simon's marker detected!");
  }
  if (rx_queue_entry_flags == (RX_CRC_32_OK | RX_COMPLETE_FRAME)) {
    struct atm_vcc * atm_vcc;
    
    FUNC2 (DBG_RX, "got a frame on rx_channel %x len %u", rx_channel, rx_len);
    
    atm_vcc = dev->rxer[rx_channel];
    // if no vcc is assigned to this channel, we should drop the frame
    // (is this what SIMONS etc. was trying to achieve?)
    
    if (atm_vcc) {
      
      if (atm_vcc->qos.rxtp.traffic_class != ATM_NONE) {
	
	if (rx_len <= atm_vcc->qos.rxtp.max_sdu) {
	    
	  struct sk_buff * skb = FUNC8 (atm_vcc, rx_len, GFP_ATOMIC);
	  if (skb) {
	    // remember this so we can push it later
	    dev->rx_skb = skb;
	    // remember this so we can flush it later
	    dev->rx_channel = rx_channel;
	    
	    // prepare socket buffer
	    FUNC14 (skb, rx_len);
	    FUNC0(skb)->vcc = atm_vcc;
	    
	    // simple transfer
	    // dev->rx_regions = 0;
	    // dev->rx_iovec = 0;
	    dev->rx_bytes = rx_len;
	    dev->rx_addr = skb->data;
	    FUNC2 (DBG_RX, "RX start simple transfer (addr %p, len %d)",
		    skb->data, rx_len);
	    
	    // do the business
	    FUNC13 (dev, 0);
	    return;
	    
	  } else {
	    FUNC2 (DBG_SKB|DBG_WARN, "failed to get skb");
	  }
	  
	} else {
	  FUNC3 (KERN_INFO, "frame received on TX-only VC %x", rx_channel);
	  // do we count this?
	}
	
      } else {
	FUNC3 (KERN_WARNING, "dropped over-size frame");
	// do we count this?
      }
      
    } else {
      FUNC2 (DBG_WARN|DBG_VCC|DBG_RX, "no VCC for this frame (VC closed)");
      // do we count this?
    }
    
  } else {
    // Wait update complete ? SPONG
  }
  
  // RX was aborted
  FUNC7(dev);
  
  FUNC1 (dev,rx_channel);
  FUNC9 (rx_busy, &dev->flags);
  
  return;
}