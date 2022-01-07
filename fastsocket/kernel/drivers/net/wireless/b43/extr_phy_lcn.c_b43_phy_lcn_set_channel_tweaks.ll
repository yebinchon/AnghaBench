; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_set_channel_tweaks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_set_channel_tweaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bcma_drv_cc }
%struct.bcma_drv_cc = type { i32 }

@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_lcn_set_channel_tweaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_set_channel_tweaks(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_drv_cc*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.bcma_drv_cc* %13, %struct.bcma_drv_cc** %5, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 14
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 512, i32 256
  %19 = call i32 @b43_phy_maskset(%struct.b43_wldev* %14, i32 1096, i32 -769, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %43, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 11
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %61

43:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %2
  %44 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %45 = call i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc* %44, i32 2, i32 50334724)
  %46 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %47 = call i32 @bcma_chipco_pll_maskset(%struct.bcma_drv_cc* %46, i32 3, i32 16777215, i32 0)
  %48 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %49 = call i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc* %48, i32 4, i32 536872384)
  %50 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %51 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %52 = call i32 @bcma_cc_set32(%struct.bcma_drv_cc* %50, i32 %51, i32 1024)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %53, i32 2370, i32 0)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = call i32 @b43_phy_lcn_txrx_spur_avoidance_mode(%struct.b43_wldev* %55, i32 0)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = call i32 @b43_phy_maskset(%struct.b43_wldev* %57, i32 1060, i32 -65281, i32 6912)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %59, i32 1061, i32 22791)
  br label %79

61:                                               ; preds = %40
  %62 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %63 = call i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc* %62, i32 2, i32 51645444)
  %64 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %65 = call i32 @bcma_chipco_pll_maskset(%struct.bcma_drv_cc* %64, i32 3, i32 16777215, i32 3355443)
  %66 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %67 = call i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc* %66, i32 4, i32 539764768)
  %68 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %69 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %70 = call i32 @bcma_cc_set32(%struct.bcma_drv_cc* %68, i32 %69, i32 1024)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %72 = call i32 @b43_phy_write(%struct.b43_wldev* %71, i32 2370, i32 0)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = call i32 @b43_phy_lcn_txrx_spur_avoidance_mode(%struct.b43_wldev* %73, i32 1)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %76 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 1060, i32 -65281, i32 7936)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = call i32 @b43_phy_write(%struct.b43_wldev* %77, i32 1061, i32 22794)
  br label %79

79:                                               ; preds = %61, %43
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = call i32 @b43_phy_set(%struct.b43_wldev* %80, i32 1098, i32 68)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = call i32 @b43_phy_write(%struct.b43_wldev* %82, i32 1098, i32 128)
  ret void
}

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_chipco_pll_maskset(%struct.bcma_drv_cc*, i32, i32, i32) #1

declare dso_local i32 @bcma_cc_set32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_lcn_txrx_spur_avoidance_mode(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
