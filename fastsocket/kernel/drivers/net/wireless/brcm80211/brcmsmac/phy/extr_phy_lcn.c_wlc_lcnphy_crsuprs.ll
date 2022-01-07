; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_crsuprs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_crsuprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_crsuprs(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = call i32 @read_phy_reg(%struct.brcms_phy* %7, i32 1083)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = call i32 @read_phy_reg(%struct.brcms_phy* %9, i32 1084)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = call i32 @mod_phy_reg(%struct.brcms_phy* %14, i32 1083, i32 2, i32 2)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %16, i32 1084, i32 2, i32 0)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = call i32 @mod_phy_reg(%struct.brcms_phy* %18, i32 1083, i32 16, i32 16)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @mod_phy_reg(%struct.brcms_phy* %20, i32 1084, i32 64, i32 0)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %23 = call i32 @write_phy_reg(%struct.brcms_phy* %22, i32 1099, i32 65535)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = call i32 @wlc_lcnphy_tx_pu(%struct.brcms_phy* %24, i32 1)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %26, i32 1588, i32 65280, i32 0)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = call i32 @or_phy_reg(%struct.brcms_phy* %28, i32 1754, i32 128)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = call i32 @or_phy_reg(%struct.brcms_phy* %30, i32 10, i32 552)
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = call i32 @and_phy_reg(%struct.brcms_phy* %33, i32 10, i32 -553)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = call i32 @and_phy_reg(%struct.brcms_phy* %35, i32 1754, i32 65407)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @write_phy_reg(%struct.brcms_phy* %37, i32 1083, i32 %38)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @write_phy_reg(%struct.brcms_phy* %40, i32 1084, i32 %41)
  br label %43

43:                                               ; preds = %32, %13
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_pu(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
