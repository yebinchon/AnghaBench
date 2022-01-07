; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_rx_gain_by_distribution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_rx_gain_by_distribution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32, i32, i32, i32, i32)* @wlc_lcnphy_set_rx_gain_by_distribution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_rx_gain_by_distribution(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.brcms_phy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %13, align 4
  %22 = and i32 %21, 15
  %23 = shl i32 %22, 12
  %24 = load i32, i32* %14, align 4
  %25 = and i32 %24, 15
  %26 = shl i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i32, i32* %15, align 4
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 6
  %31 = or i32 %27, %30
  %32 = load i32, i32* %15, align 4
  %33 = and i32 %32, 3
  %34 = shl i32 %33, 4
  %35 = or i32 %31, %34
  %36 = load i32, i32* %16, align 4
  %37 = and i32 %36, 3
  %38 = shl i32 %37, 2
  %39 = or i32 %35, %38
  %40 = load i32, i32* %16, align 4
  %41 = and i32 %40, 3
  %42 = shl i32 %41, 0
  %43 = or i32 %39, %42
  store i32 %43, i32* %17, align 4
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %45 = load i32, i32* %17, align 4
  %46 = shl i32 %45, 0
  %47 = call i32 @mod_phy_reg(%struct.brcms_phy* %44, i32 1206, i32 65535, i32 %46)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %49 = load i32, i32* %18, align 4
  %50 = shl i32 %49, 0
  %51 = call i32 @mod_phy_reg(%struct.brcms_phy* %48, i32 1207, i32 15, i32 %50)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = shl i32 %53, 11
  %55 = call i32 @mod_phy_reg(%struct.brcms_phy* %52, i32 1201, i32 6144, i32 %54)
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @LCNREV_LT(i32 %59, i32 2)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %8
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 9
  %66 = call i32 @mod_phy_reg(%struct.brcms_phy* %63, i32 1201, i32 512, i32 %65)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = shl i32 %68, 10
  %70 = call i32 @mod_phy_reg(%struct.brcms_phy* %67, i32 1201, i32 1024, i32 %69)
  br label %80

71:                                               ; preds = %8
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %73 = call i32 @mod_phy_reg(%struct.brcms_phy* %72, i32 1201, i32 1024, i32 0)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %75 = call i32 @mod_phy_reg(%struct.brcms_phy* %74, i32 1201, i32 32768, i32 0)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 9
  %79 = call i32 @mod_phy_reg(%struct.brcms_phy* %76, i32 1201, i32 512, i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = shl i32 %85, 0
  %87 = call i32 @mod_phy_reg(%struct.brcms_phy* %81, i32 1101, i32 1, i32 %86)
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @LCNREV_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
