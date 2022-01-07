; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_rx_queue_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_rx_queue_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_rx_queue = type { i32, i32 }

@RX_QUEUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_rx_queue*)* @ipw_rx_queue_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_rx_queue_space(%struct.ipw_rx_queue* %0) #0 {
  %2 = alloca %struct.ipw_rx_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_rx_queue* %0, %struct.ipw_rx_queue** %2, align 8
  %4 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i64, i64* @RX_QUEUE_SIZE, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
