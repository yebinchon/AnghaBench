; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@b43legacy_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot request IRQ-%d\0A\00", align 1
@B43legacy_STAT_STARTED = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Wireless interface started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_wireless_core_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_wireless_core_start(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %4)
  %6 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @B43legacy_WARN_ON(i32 %8)
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = call i32 @drain_txstatus_queue(%struct.b43legacy_wldev* %10)
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @b43legacy_interrupt_handler, align 4
  %18 = load i32, i32* @IRQF_SHARED, align 4
  %19 = load i32, i32* @KBUILD_MODNAME, align 4
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = call i32 @request_irq(i32 %16, i32 %17, i32 %18, i32 %19, %struct.b43legacy_wldev* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %26 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @b43legacyerr(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %58

34:                                               ; preds = %1
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %36 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ieee80211_wake_queues(i32 %39)
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %42 = load i32, i32* @B43legacy_STAT_STARTED, align 4
  %43 = call i32 @b43legacy_set_status(%struct.b43legacy_wldev* %41, i32 %42)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = call i32 @b43legacy_mac_enable(%struct.b43legacy_wldev* %44)
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %47 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %46, i32 %47, i32 %50)
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %53 = call i32 @b43legacy_periodic_tasks_setup(%struct.b43legacy_wldev* %52)
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %55 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @b43legacydbg(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %34, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @drain_txstatus_queue(%struct.b43legacy_wldev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @b43legacy_set_status(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_mac_enable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_periodic_tasks_setup(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacydbg(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
