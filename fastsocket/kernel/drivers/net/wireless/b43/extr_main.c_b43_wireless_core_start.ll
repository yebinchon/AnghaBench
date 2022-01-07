; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@b43_sdio_interrupt_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot request SDIO IRQ\0A\00", align 1
@b43_interrupt_handler = common dso_local global i32 0, align 4
@b43_interrupt_thread_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot request IRQ-%d\0A\00", align 1
@B43_STAT_STARTED = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Wireless interface started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_wireless_core_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_wireless_core_start(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = call i64 @b43_status(%struct.b43_wldev* %4)
  %6 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @B43_WARN_ON(i32 %8)
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i32 @drain_txstatus_queue(%struct.b43_wldev* %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i64 @b43_bus_host_is_sdio(%struct.TYPE_5__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = load i32, i32* @b43_sdio_interrupt_handler, align 4
  %20 = call i32 @b43_sdio_request_irq(%struct.b43_wldev* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 (%struct.TYPE_4__*, i8*, ...) @b43err(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %80

28:                                               ; preds = %17
  br label %54

29:                                               ; preds = %1
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @b43_interrupt_handler, align 4
  %36 = load i32, i32* @b43_interrupt_thread_handler, align 4
  %37 = load i32, i32* @IRQF_SHARED, align 4
  %38 = load i32, i32* @KBUILD_MODNAME, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @request_threaded_irq(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, %struct.b43_wldev* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.TYPE_4__*, i8*, ...) @b43err(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %80

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ieee80211_wake_queues(i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_STAT_STARTED, align 4
  %63 = call i32 @b43_set_status(%struct.b43_wldev* %61, i32 %62)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_mac_enable(%struct.b43_wldev* %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @b43_write32(%struct.b43_wldev* %66, i32 %67, i32 %70)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = call i32 @b43_periodic_tasks_setup(%struct.b43_wldev* %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = call i32 @b43_leds_init(%struct.b43_wldev* %74)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = call i32 @b43dbg(%struct.TYPE_4__* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %54, %43, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @drain_txstatus_queue(%struct.b43_wldev*) #1

declare dso_local i64 @b43_bus_host_is_sdio(%struct.TYPE_5__*) #1

declare dso_local i32 @b43_sdio_request_irq(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.b43_wldev*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @b43_set_status(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_periodic_tasks_setup(%struct.b43_wldev*) #1

declare dso_local i32 @b43_leds_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43dbg(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
