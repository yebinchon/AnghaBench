; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_pa_override.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_pa_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32 }

@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_pa_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_pa_override(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %2
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %17 = call i8* @b43_phy_read(%struct.b43_wldev* %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %20 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %23 = call i8* @b43_phy_read(%struct.b43_wldev* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %26 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @b43_current_band(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %43

36:                                               ; preds = %14
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1536, i32* %7, align 4
  br label %42

41:                                               ; preds = %36
  store i32 1152, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %50

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 384, i32* %7, align 4
  br label %49

48:                                               ; preds = %43
  store i32 288, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %42
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 %56, i32 %57)
  br label %72

59:                                               ; preds = %2
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %62 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %63 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @b43_phy_write(%struct.b43_wldev* %60, i32 %61, i32 %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %68 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %69 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @b43_phy_write(%struct.b43_wldev* %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %59, %50
  ret void
}

declare dso_local i8* @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
