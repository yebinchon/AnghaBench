; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_slow_event_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_slow_event_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, i32, i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@RxFIFOOver = common dso_local global i32 0, align 4
@RTL_FLAG_TASK_RESET_PENDING = common dso_local global i32 0, align 4
@SYSErr = common dso_local global i32 0, align 4
@LinkChg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_slow_event_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_slow_event_work(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 4
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i32 @rtl_get_events(%struct.rtl8169_private* %8)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @rtl_ack_events(%struct.rtl8169_private* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RxFIFOOver, align 4
  %19 = and i32 %17, %18
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %35 [
    i32 128, label %26
  ]

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_stop_queue(%struct.net_device* %27)
  %29 = load i32, i32* @RTL_FLAG_TASK_RESET_PENDING, align 4
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_bit(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %22, %26
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SYSErr, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @rtl8169_pcierr_interrupt(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @LinkChg, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @__rtl8169_check_link_status(%struct.net_device* %52, %struct.rtl8169_private* %53, i32 %56, i32 1)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_irq_enable_all(%struct.rtl8169_private* %59)
  ret void
}

declare dso_local i32 @rtl_get_events(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_ack_events(%struct.rtl8169_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rtl8169_pcierr_interrupt(%struct.net_device*) #1

declare dso_local i32 @__rtl8169_check_link_status(%struct.net_device*, %struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_irq_enable_all(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
