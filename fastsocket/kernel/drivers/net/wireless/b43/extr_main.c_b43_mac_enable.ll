; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_mac_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i64, i32 }

@B43_DBG_FIRMWARE = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODESTAT = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODESTAT_SUSP = common dso_local global i64 0, align 8
@B43_SHM_SH_UCODESTAT_SLEEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"b43_mac_enable(): The firmware should be suspended, but current state is %u\0A\00", align 1
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_ENABLED = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43_IRQ_MAC_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_mac_enable(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = load i32, i32* @B43_DBG_FIRMWARE, align 4
  %6 = call i64 @b43_debug(%struct.b43_wldev* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_SHM_SHARED, align 4
  %11 = load i32, i32* @B43_SHM_SH_UCODESTAT, align 4
  %12 = call i64 @b43_shm_read16(%struct.b43_wldev* %9, i32 %10, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @B43_SHM_SH_UCODESTAT_SUSP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @B43_SHM_SH_UCODESTAT_SLEEP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @b43err(i32 %23, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %20, %16, %8
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @B43_WARN_ON(i32 %36)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %27
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %45 = load i32, i32* @B43_MACCTL_ENABLED, align 4
  %46 = call i32 @b43_maskset32(%struct.b43_wldev* %43, i32 %44, i32 -1, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %49 = load i32, i32* @B43_IRQ_MAC_SUSPENDED, align 4
  %50 = call i32 @b43_write32(%struct.b43_wldev* %47, i32 %48, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %53 = call i32 @b43_read32(%struct.b43_wldev* %51, i32 %52)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %56 = call i32 @b43_read32(%struct.b43_wldev* %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_power_saving_ctl_bits(%struct.b43_wldev* %57, i32 0)
  br label %59

59:                                               ; preds = %42, %27
  ret void
}

declare dso_local i64 @b43_debug(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*, i64) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_power_saving_ctl_bits(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
