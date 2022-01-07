; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rfseq_tbl_adc_pwrup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rfseq_tbl_adc_pwrup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @wlc_lcnphy_rfseq_tbl_adc_pwrup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = call i32 @read_phy_reg(%struct.brcms_phy* %10, i32 1189)
  %12 = and i32 %11, 255
  %13 = ashr i32 %12, 0
  store i32 %13, i32* %3, align 4
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = call i32 @read_phy_reg(%struct.brcms_phy* %14, i32 1189)
  %16 = and i32 %15, 28672
  %17 = ashr i32 %16, 12
  %18 = shl i32 1, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = call i32 @read_phy_reg(%struct.brcms_phy* %19, i32 1037)
  %21 = and i32 %20, 255
  %22 = ashr i32 %21, 0
  store i32 %22, i32* %5, align 4
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = call i32 @read_phy_reg(%struct.brcms_phy* %23, i32 1037)
  %25 = and i32 %24, 1792
  %26 = ashr i32 %25, 8
  %27 = shl i32 1, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = call i32 @read_phy_reg(%struct.brcms_phy* %28, i32 1186)
  %30 = and i32 %29, 255
  %31 = ashr i32 %30, 0
  store i32 %31, i32* %7, align 4
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = call i32 @read_phy_reg(%struct.brcms_phy* %32, i32 1186)
  %34 = and i32 %33, 1792
  %35 = ashr i32 %34, 8
  %36 = shl i32 1, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %43, %47
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 %49, 80
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 1600
  br i1 %52, label %53, label %54

53:                                               ; preds = %1
  store i32 1600, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
