
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene {size_t EventQueueReadIndex; size_t EventQueueWriteIndex; int (* RxEventNotify ) (struct ngene*,int ,int ) ;int (* TxEventNotify ) (struct ngene*,int ) ;struct EVENT_BUFFER* EventQueue; } ;
struct EVENT_BUFFER {int UARTStatus; int RXCharacter; int TimeStamp; } ;


 int EVENT_QUEUE_SIZE ;
 int stub1 (struct ngene*,int ) ;
 int stub2 (struct ngene*,int ,int ) ;

__attribute__((used)) static void event_tasklet(unsigned long data)
{
 struct ngene *dev = (struct ngene *)data;

 while (dev->EventQueueReadIndex != dev->EventQueueWriteIndex) {
  struct EVENT_BUFFER Event =
   dev->EventQueue[dev->EventQueueReadIndex];
  dev->EventQueueReadIndex =
   (dev->EventQueueReadIndex + 1) & (EVENT_QUEUE_SIZE - 1);

  if ((Event.UARTStatus & 0x01) && (dev->TxEventNotify))
   dev->TxEventNotify(dev, Event.TimeStamp);
  if ((Event.UARTStatus & 0x02) && (dev->RxEventNotify))
   dev->RxEventNotify(dev, Event.TimeStamp,
        Event.RXCharacter);
 }
}
