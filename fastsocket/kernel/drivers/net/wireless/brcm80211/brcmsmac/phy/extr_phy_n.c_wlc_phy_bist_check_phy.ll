; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_bist_check_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_bist_check_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_bist_check_phy(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  %10 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %11 = bitcast %struct.brcms_phy_pub* %10 to %struct.brcms_phy*
  store %struct.brcms_phy* %11, %struct.brcms_phy** %4, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @NREV_GE(i32 %15, i32 16)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %21 = call i64 @read_phy_reg(%struct.brcms_phy* %20, i32 14)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = call i64 @read_phy_reg(%struct.brcms_phy* %22, i32 15)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %25 = call i64 @read_phy_reg(%struct.brcms_phy* %24, i32 234)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = call i64 @read_phy_reg(%struct.brcms_phy* %26, i32 235)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %29 = call i64 @read_phy_reg(%struct.brcms_phy* %28, i32 342)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 16384
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 8160
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %46

45:                                               ; preds = %41, %38, %35, %32, %19
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
