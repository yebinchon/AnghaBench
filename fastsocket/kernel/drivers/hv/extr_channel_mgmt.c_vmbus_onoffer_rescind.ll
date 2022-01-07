; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer_rescind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer_rescind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel_message_header = type { i32 }
%struct.vmbus_channel_rescind_offer = type { i32 }
%struct.vmbus_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel_message_header*)* @vmbus_onoffer_rescind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_onoffer_rescind(%struct.vmbus_channel_message_header* %0) #0 {
  %2 = alloca %struct.vmbus_channel_message_header*, align 8
  %3 = alloca %struct.vmbus_channel_rescind_offer*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel_message_header* %0, %struct.vmbus_channel_message_header** %2, align 8
  %5 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %6 = bitcast %struct.vmbus_channel_message_header* %5 to %struct.vmbus_channel_rescind_offer*
  store %struct.vmbus_channel_rescind_offer* %6, %struct.vmbus_channel_rescind_offer** %3, align 8
  %7 = load %struct.vmbus_channel_rescind_offer*, %struct.vmbus_channel_rescind_offer** %3, align 8
  %8 = getelementptr inbounds %struct.vmbus_channel_rescind_offer, %struct.vmbus_channel_rescind_offer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.vmbus_channel* @relid2channel(i32 %9)
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %4, align 8
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %12 = icmp eq %struct.vmbus_channel* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 0
  %20 = call i32 @queue_work(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.vmbus_channel* @relid2channel(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
