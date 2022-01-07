; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_pu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_pu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_tx_pu(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = call i32 @and_phy_reg(%struct.brcms_phy* %8, i32 1083, i32 -19)
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = call i32 @mod_phy_reg(%struct.brcms_phy* %10, i32 1084, i32 2, i32 2)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = call i32 @and_phy_reg(%struct.brcms_phy* %12, i32 1100, i32 -4144)
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = call i32 @and_phy_reg(%struct.brcms_phy* %14, i32 1101, i32 -16425)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %16, i32 1101, i32 4, i32 4)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = call i32 @mod_phy_reg(%struct.brcms_phy* %18, i32 1101, i32 3, i32 1)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @and_phy_reg(%struct.brcms_phy* %20, i32 1273, i32 -8)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %23 = call i32 @and_phy_reg(%struct.brcms_phy* %22, i32 1274, i32 -8)
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = call i32 @mod_phy_reg(%struct.brcms_phy* %25, i32 1083, i32 2, i32 2)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = call i32 @mod_phy_reg(%struct.brcms_phy* %27, i32 1084, i32 2, i32 0)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = call i32 @mod_phy_reg(%struct.brcms_phy* %29, i32 1083, i32 16, i32 16)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = call i32 @mod_phy_reg(%struct.brcms_phy* %31, i32 1084, i32 64, i32 0)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = call i32 @mod_phy_reg(%struct.brcms_phy* %33, i32 1100, i32 4096, i32 4096)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = call i32 @mod_phy_reg(%struct.brcms_phy* %35, i32 1101, i32 16384, i32 16384)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = call i32 @wlc_lcnphy_set_trsw_override(%struct.brcms_phy* %37, i32 1, i32 0)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = call i32 @mod_phy_reg(%struct.brcms_phy* %39, i32 1101, i32 4, i32 0)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = call i32 @mod_phy_reg(%struct.brcms_phy* %41, i32 1100, i32 4, i32 4)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @CHSPEC_IS2G(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %24
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = call i32 @mod_phy_reg(%struct.brcms_phy* %49, i32 1100, i32 8, i32 8)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = call i32 @mod_phy_reg(%struct.brcms_phy* %51, i32 1101, i32 8, i32 8)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %54 = call i32 @mod_phy_reg(%struct.brcms_phy* %53, i32 1100, i32 32, i32 32)
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = call i32 @mod_phy_reg(%struct.brcms_phy* %55, i32 1101, i32 32, i32 0)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = call i32 @mod_phy_reg(%struct.brcms_phy* %57, i32 1273, i32 2, i32 2)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %60 = call i32 @mod_phy_reg(%struct.brcms_phy* %59, i32 1274, i32 2, i32 2)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = call i32 @mod_phy_reg(%struct.brcms_phy* %61, i32 1273, i32 4, i32 4)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = call i32 @mod_phy_reg(%struct.brcms_phy* %63, i32 1274, i32 4, i32 4)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = call i32 @mod_phy_reg(%struct.brcms_phy* %65, i32 1273, i32 1, i32 1)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = call i32 @mod_phy_reg(%struct.brcms_phy* %67, i32 1274, i32 1, i32 1)
  br label %90

69:                                               ; preds = %24
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = call i32 @mod_phy_reg(%struct.brcms_phy* %70, i32 1100, i32 8, i32 8)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = call i32 @mod_phy_reg(%struct.brcms_phy* %72, i32 1101, i32 8, i32 0)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = call i32 @mod_phy_reg(%struct.brcms_phy* %74, i32 1100, i32 32, i32 32)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %77 = call i32 @mod_phy_reg(%struct.brcms_phy* %76, i32 1101, i32 32, i32 32)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = call i32 @mod_phy_reg(%struct.brcms_phy* %78, i32 1273, i32 2, i32 2)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %81 = call i32 @mod_phy_reg(%struct.brcms_phy* %80, i32 1274, i32 2, i32 0)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = call i32 @mod_phy_reg(%struct.brcms_phy* %82, i32 1273, i32 4, i32 4)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = call i32 @mod_phy_reg(%struct.brcms_phy* %84, i32 1274, i32 4, i32 0)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = call i32 @mod_phy_reg(%struct.brcms_phy* %86, i32 1273, i32 1, i32 1)
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %89 = call i32 @mod_phy_reg(%struct.brcms_phy* %88, i32 1274, i32 1, i32 0)
  br label %90

90:                                               ; preds = %69, %48
  br label %91

91:                                               ; preds = %90, %7
  ret void
}

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_trsw_override(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
