; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_netfront_tx_slot_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_netfront_tx_slot_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TX_MAX_TARGET = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_info*)* @netfront_tx_slot_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfront_tx_slot_available(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  %3 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %4 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %8 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %6, %10
  %12 = load i32, i32* @TX_MAX_TARGET, align 4
  %13 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sub nsw i32 %14, 2
  %16 = icmp slt i32 %11, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
