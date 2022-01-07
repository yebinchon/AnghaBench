; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_adjust_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_adjust_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @lpphy_adjust_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_adjust_gain_table(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_lp*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %10, align 8
  store %struct.b43_phy_lp* %11, %struct.b43_phy_lp** %5, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = call i32 @B43_WARN_ON(i32 %17)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @b43_current_band(i32 %21)
  %23 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %27 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %49

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 5320
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %34 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp sle i32 %37, 5700
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %41 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %45 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 26
  %52 = sdiv i32 %51, 12
  %53 = shl i32 %52, 12
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 4096
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 8192
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = call i32 @B43_LPTAB16(i32 13, i32 0)
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %66 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %63, i32 %64, i32 3, i32* %65)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = call i32 @B43_LPTAB16(i32 12, i32 0)
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %70 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %67, i32 %68, i32 3, i32* %69)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_lptab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
