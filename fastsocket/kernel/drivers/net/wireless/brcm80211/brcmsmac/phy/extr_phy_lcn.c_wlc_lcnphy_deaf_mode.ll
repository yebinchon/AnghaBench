; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_deaf_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_deaf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @CHSPEC_IS40(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @LCNREV_LT(i32 %13, i32 2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 5
  %20 = call i32 @mod_phy_reg(%struct.brcms_phy* %17, i32 1200, i32 32, i32 %19)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = call i32 @mod_phy_reg(%struct.brcms_phy* %21, i32 1201, i32 512, i32 0)
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 5
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %24, i32 1200, i32 32, i32 %26)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = call i32 @mod_phy_reg(%struct.brcms_phy* %28, i32 1201, i32 512, i32 0)
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @CHSPEC_IS2G(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32 [ %44, %40 ], [ 0, %45 ]
  %48 = shl i32 %47, 6
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = shl i32 %52, 5
  %54 = or i32 %48, %53
  %55 = call i32 @mod_phy_reg(%struct.brcms_phy* %34, i32 1040, i32 96, i32 %54)
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, 7
  %59 = call i32 @mod_phy_reg(%struct.brcms_phy* %56, i32 1040, i32 128, i32 %58)
  br label %60

60:                                               ; preds = %46, %30
  ret void
}

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i64 @LCNREV_LT(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
