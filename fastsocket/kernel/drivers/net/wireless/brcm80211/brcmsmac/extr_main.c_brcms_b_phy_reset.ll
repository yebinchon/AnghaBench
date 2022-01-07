; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.brcms_phy_pub* }
%struct.brcms_phy_pub = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"wl%d: reset phy\0A\00", align 1
@SICF_BWMASK = common dso_local global i32 0, align 4
@SICF_PRST = common dso_local global i32 0, align 4
@SICF_PCLKE = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_b_phy_reset(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %9, align 8
  store %struct.brcms_phy_pub* %10, %struct.brcms_phy_pub** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @brcms_dbg_info(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %19 = icmp eq %struct.brcms_phy_pub* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %89

21:                                               ; preds = %1
  %22 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %25, align 8
  %27 = call i32 @wlc_phy_clk_bwbits(%struct.brcms_phy_pub* %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i64 @BRCMS_ISNPHY(%struct.TYPE_2__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %21
  %34 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @NREV_GE(i32 %38, i32 3)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %33
  %42 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @NREV_LE(i32 %46, i32 4)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %41
  %50 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %51 = load i32, i32* @SICF_BWMASK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @brcms_b_core_ioctl(%struct.brcms_hardware* %50, i32 %51, i32 %52)
  %54 = call i32 @udelay(i32 1)
  %55 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %56 = call i32 @brcms_b_core_phypll_reset(%struct.brcms_hardware* %55)
  %57 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %58 = load i32, i32* @SICF_PRST, align 4
  %59 = load i32, i32* @SICF_PCLKE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SICF_PRST, align 4
  %62 = load i32, i32* @SICF_PCLKE, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @brcms_b_core_ioctl(%struct.brcms_hardware* %57, i32 %60, i32 %63)
  store i32 1, i32* %5, align 4
  br label %78

65:                                               ; preds = %41, %33, %21
  %66 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %67 = load i32, i32* @SICF_PRST, align 4
  %68 = load i32, i32* @SICF_PCLKE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SICF_BWMASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SICF_PRST, align 4
  %73 = load i32, i32* @SICF_PCLKE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @brcms_b_core_ioctl(%struct.brcms_hardware* %66, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %65, %49
  %79 = call i32 @udelay(i32 2)
  %80 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %81 = load i32, i32* @ON, align 4
  %82 = call i32 @brcms_b_core_phy_clk(%struct.brcms_hardware* %80, i32 %81)
  %83 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %84 = icmp ne %struct.brcms_phy_pub* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %87 = load i32, i32* @ON, align 4
  %88 = call i32 @wlc_phy_anacore(%struct.brcms_phy_pub* %86, i32 %87)
  br label %89

89:                                               ; preds = %20, %85, %78
  ret void
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i32 @wlc_phy_clk_bwbits(%struct.brcms_phy_pub*) #1

declare dso_local i64 @BRCMS_ISNPHY(%struct.TYPE_2__*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LE(i32, i32) #1

declare dso_local i32 @brcms_b_core_ioctl(%struct.brcms_hardware*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @brcms_b_core_phypll_reset(%struct.brcms_hardware*) #1

declare dso_local i32 @brcms_b_core_phy_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @wlc_phy_anacore(%struct.brcms_phy_pub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
