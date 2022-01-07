; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_txpower_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_txpower_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.b43_phy = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.b43_wldev*, i32)*, i32* }

@jiffies = common dso_local global i64 0, align 8
@B43_TXPWR_IGNORE_TIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@B43_TXPWR_IGNORE_TSSI = common dso_local global i32 0, align 4
@B43_TXPWR_RES_DONE = common dso_local global i32 0, align 4
@B43_TXPWR_RES_NEED_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_txpower_check(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  store %struct.b43_phy* %9, %struct.b43_phy** %5, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @B43_TXPWR_IGNORE_TIME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @time_before(i64 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %92

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add i64 %25, %28
  %30 = call i32 @round_jiffies(i64 %29)
  %31 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %32 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %92

49:                                               ; preds = %40, %24
  %50 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %51 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %53, align 8
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @B43_TXPWR_IGNORE_TSSI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 %54(%struct.b43_wldev* %55, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @B43_TXPWR_RES_DONE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %92

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @B43_TXPWR_RES_NEED_ADJUST, align 4
  %71 = icmp ne i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @B43_WARN_ON(i32 %72)
  %74 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %75 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @B43_WARN_ON(i32 %80)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @ieee80211_queue_work(i32 %86, i32* %90)
  br label %92

92:                                               ; preds = %68, %67, %48, %22
  ret void
}

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
