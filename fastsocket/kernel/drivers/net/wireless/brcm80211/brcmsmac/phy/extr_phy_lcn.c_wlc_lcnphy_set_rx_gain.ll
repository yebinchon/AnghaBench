; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_rx_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_rx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_rx_gain(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 268435456
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 29
  %21 = and i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 0
  %24 = and i32 %23, 15
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 15
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 12
  %33 = and i32 %32, 15
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 15
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 3
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 3
  %41 = shl i32 %40, 2
  %42 = or i32 %38, %41
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 4
  %46 = or i32 %42, %45
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 %48, 6
  %50 = or i32 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 8
  %54 = or i32 %50, %53
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 12
  %58 = or i32 %54, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 0
  %63 = call i32 @mod_phy_reg(%struct.brcms_phy* %60, i32 1101, i32 1, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 9
  %67 = call i32 @mod_phy_reg(%struct.brcms_phy* %64, i32 1201, i32 512, i32 %66)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 10
  %71 = call i32 @mod_phy_reg(%struct.brcms_phy* %68, i32 1201, i32 1024, i32 %70)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 0
  %75 = call i32 @mod_phy_reg(%struct.brcms_phy* %72, i32 1206, i32 65535, i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 %77, 0
  %79 = call i32 @mod_phy_reg(%struct.brcms_phy* %76, i32 1207, i32 15, i32 %78)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @CHSPEC_IS2G(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %2
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = shl i32 %87, 11
  %89 = call i32 @mod_phy_reg(%struct.brcms_phy* %86, i32 1201, i32 6144, i32 %88)
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 3
  %93 = call i32 @mod_phy_reg(%struct.brcms_phy* %90, i32 1254, i32 24, i32 %92)
  br label %94

94:                                               ; preds = %85, %2
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = call i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %95, i32 1)
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
