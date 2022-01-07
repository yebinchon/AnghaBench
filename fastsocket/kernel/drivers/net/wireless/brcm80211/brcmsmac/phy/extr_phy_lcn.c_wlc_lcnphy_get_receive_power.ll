; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_receive_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_receive_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32 }

@lcnphy_23bitgaincode_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i64*)* @wlc_lcnphy_get_receive_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_get_receive_power(%struct.brcms_phy* %0, i64* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %11, align 8
  store %struct.brcms_phy_lcnphy* %12, %struct.brcms_phy_lcnphy** %8, align 8
  store i64 36, i64* %6, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** @lcnphy_23bitgaincode_table, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 -1, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i64*, i64** %4, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %38, %26
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 700
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i1 [ false, %28 ], [ %35, %33 ]
  br i1 %37, label %38, label %54

38:                                               ; preds = %36
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = load i32*, i32** @lcnphy_23bitgaincode_table, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wlc_lcnphy_set_rx_gain(%struct.brcms_phy* %39, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %8, align 8
  %48 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wlc_lcnphy_measure_digital_power(%struct.brcms_phy* %46, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i64*, i64** %4, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %28

54:                                               ; preds = %36
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  br label %67

58:                                               ; preds = %22
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @wlc_lcnphy_set_rx_gain(%struct.brcms_phy* %59, i32 %60)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %63 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %8, align 8
  %64 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wlc_lcnphy_measure_digital_power(%struct.brcms_phy* %62, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %58, %54
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @wlc_lcnphy_set_rx_gain(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_measure_digital_power(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
