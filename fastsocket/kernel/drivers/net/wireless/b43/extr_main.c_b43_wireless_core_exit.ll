; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.b43_wldev*, i32)* }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43_STAT_UNINIT = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_PSM_RUN = common dso_local global i32 0, align 4
@B43_MACCTL_PSM_JMP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wireless_core_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wireless_core_exit(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = icmp ne %struct.b43_wldev* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = call i64 @b43_status(%struct.b43_wldev* %6)
  %8 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %9 = icmp sgt i64 %7, %8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @B43_WARN_ON(i32 %12)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = icmp ne %struct.b43_wldev* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i64 @b43_status(%struct.b43_wldev* %17)
  %19 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %10
  br label %72

22:                                               ; preds = %16
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @b43_rng_exit(%struct.TYPE_6__* %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_STAT_UNINIT, align 4
  %29 = call i32 @b43_set_status(%struct.b43_wldev* %27, i32 %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %32 = load i32, i32* @B43_MACCTL_PSM_RUN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @B43_MACCTL_PSM_JMP0, align 4
  %35 = call i32 @b43_maskset32(%struct.b43_wldev* %30, i32 %31, i32 %33, i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_dma_free(%struct.b43_wldev* %36)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_pio_free(%struct.b43_wldev* %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_chip_exit(%struct.b43_wldev* %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %46, align 8
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = call i32 %47(%struct.b43_wldev* %48, i32 0)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %22
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dev_kfree_skb_any(i32* %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %56, %22
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_device_disable(%struct.b43_wldev* %68, i32 0)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %70)
  br label %72

72:                                               ; preds = %67, %21
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_rng_exit(%struct.TYPE_6__*) #1

declare dso_local i32 @b43_set_status(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_dma_free(%struct.b43_wldev*) #1

declare dso_local i32 @b43_pio_free(%struct.b43_wldev*) #1

declare dso_local i32 @b43_chip_exit(%struct.b43_wldev*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @b43_device_disable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_bus_may_powerdown(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
