; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_process_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_process_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32 }
%struct.efx_rx_queue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*, i32)* @efx_process_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_process_channel(%struct.efx_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_rx_queue*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @efx_nic_process_eventq(%struct.efx_channel* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %25 = call i64 @efx_channel_has_rx_queue(%struct.efx_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %29 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %28)
  store %struct.efx_rx_queue* %29, %struct.efx_rx_queue** %7, align 8
  %30 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %31 = call i32 @efx_rx_flush_packet(%struct.efx_channel* %30)
  %32 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %7, align 8
  %33 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %7, align 8
  %38 = call i32 @efx_fast_push_rx_descriptors(%struct.efx_rx_queue* %37)
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %23, %17
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @efx_nic_process_eventq(%struct.efx_channel*, i32) #1

declare dso_local i64 @efx_channel_has_rx_queue(%struct.efx_channel*) #1

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @efx_rx_flush_packet(%struct.efx_channel*) #1

declare dso_local i32 @efx_fast_push_rx_descriptors(%struct.efx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
