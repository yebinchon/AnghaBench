; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_switch_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.b43_wldev*)*, {}* }

@B43_DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_SHM_SH_CHAN_5GHZ = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_CHAN = common dso_local global i32 0, align 4
@B43_SHM_SH_CHAN_40MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_switch_channel(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  store %struct.b43_phy* %11, %struct.b43_phy** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @B43_DEFAULT_CHANNEL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %17 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %19, align 8
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %22 = call i32 %20(%struct.b43_wldev* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @b43_current_band(i32 %27)
  %29 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @B43_SHM_SH_CHAN_5GHZ, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %37 = load i32, i32* @B43_SHM_SHARED, align 4
  %38 = load i32, i32* @B43_SHM_SH_CHAN, align 4
  %39 = call i32 @b43_shm_read16(%struct.b43_wldev* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load i32, i32* @B43_SHM_SHARED, align 4
  %42 = load i32, i32* @B43_SHM_SH_CHAN, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @b43_shm_write16(%struct.b43_wldev* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %46 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = bitcast {}** %48 to i32 (%struct.b43_wldev*, i32)**
  %50 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %49, align 8
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 %50(%struct.b43_wldev* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %63

57:                                               ; preds = %35
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = call i32 @msleep(i32 8)
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %65 = load i32, i32* @B43_SHM_SHARED, align 4
  %66 = load i32, i32* @B43_SHM_SH_CHAN, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @b43_shm_write16(%struct.b43_wldev* %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %57
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
