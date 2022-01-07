; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_est.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_iq_est = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i32, i64, %struct.lcnphy_iq_est*)* @wlc_lcnphy_rx_iq_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy* %0, i32 %1, i64 %2, %struct.lcnphy_iq_est* %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lcnphy_iq_est*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.lcnphy_iq_est* %3, %struct.lcnphy_iq_est** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @CHSPEC_IS40(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %16, i32 1754, i32 32, i32 32)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %19 = call i32 @mod_phy_reg(%struct.brcms_phy* %18, i32 1040, i32 8, i32 0)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 0
  %23 = call i32 @mod_phy_reg(%struct.brcms_phy* %20, i32 1154, i32 65535, i32 %22)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 0
  %28 = call i32 @mod_phy_reg(%struct.brcms_phy* %24, i32 1153, i32 255, i32 %27)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %30 = call i32 @mod_phy_reg(%struct.brcms_phy* %29, i32 1153, i32 256, i32 0)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %32 = call i32 @mod_phy_reg(%struct.brcms_phy* %31, i32 1153, i32 512, i32 512)
  br label %33

33:                                               ; preds = %42, %4
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %35 = call i32 @read_phy_reg(%struct.brcms_phy* %34, i32 1153)
  %36 = and i32 %35, 512
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 5000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %71

42:                                               ; preds = %38
  %43 = call i32 @udelay(i32 100)
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %33

46:                                               ; preds = %33
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %48 = call i32 @read_phy_reg(%struct.brcms_phy* %47, i32 1155)
  %49 = shl i32 %48, 16
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %51 = call i32 @read_phy_reg(%struct.brcms_phy* %50, i32 1156)
  %52 = or i32 %49, %51
  %53 = load %struct.lcnphy_iq_est*, %struct.lcnphy_iq_est** %8, align 8
  %54 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %56 = call i32 @read_phy_reg(%struct.brcms_phy* %55, i32 1157)
  %57 = shl i32 %56, 16
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %59 = call i32 @read_phy_reg(%struct.brcms_phy* %58, i32 1158)
  %60 = or i32 %57, %59
  %61 = load %struct.lcnphy_iq_est*, %struct.lcnphy_iq_est** %8, align 8
  %62 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %64 = call i32 @read_phy_reg(%struct.brcms_phy* %63, i32 1159)
  %65 = shl i32 %64, 16
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %67 = call i32 @read_phy_reg(%struct.brcms_phy* %66, i32 1160)
  %68 = or i32 %65, %67
  %69 = load %struct.lcnphy_iq_est*, %struct.lcnphy_iq_est** %8, align 8
  %70 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %46, %41
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %73 = call i32 @mod_phy_reg(%struct.brcms_phy* %72, i32 1040, i32 8, i32 8)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %75 = call i32 @mod_phy_reg(%struct.brcms_phy* %74, i32 1754, i32 32, i32 0)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
