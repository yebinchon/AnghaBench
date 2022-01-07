; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_reset_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_reset_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }

@NUM_RX_DESC = common dso_local global i32 0, align 4
@rx_buf_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_reset_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_reset_work(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 1
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = call i32 (...) @synchronize_sched()
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @rtl8169_hw_reset(%struct.rtl8169_private* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %29, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NUM_RX_DESC, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* @rx_buf_sz, align 4
  %28 = call i32 @rtl8169_mark_to_asic(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = call i32 @rtl8169_tx_clear(%struct.rtl8169_private* %33)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %36 = call i32 @rtl8169_init_ring_indexes(%struct.rtl8169_private* %35)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %37, i32 0, i32 1
  %39 = call i32 @napi_enable(i32* %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @rtl_hw_start(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netif_wake_queue(%struct.net_device* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %47 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rtl8169_check_link_status(%struct.net_device* %44, %struct.rtl8169_private* %45, i32 %48)
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @synchronize_sched(...) #1

declare dso_local i32 @rtl8169_hw_reset(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169_mark_to_asic(i64, i32) #1

declare dso_local i32 @rtl8169_tx_clear(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169_init_ring_indexes(%struct.rtl8169_private*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rtl_hw_start(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @rtl8169_check_link_status(%struct.net_device*, %struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
