; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_runbist_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_runbist_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ON = common dso_local global i32 0, align 4
@phyregaddr = common dso_local global i32 0, align 4
@phyregdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_runbist_config(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %8 = bitcast %struct.brcms_phy_pub* %7 to %struct.brcms_phy*
  store %struct.brcms_phy* %8, %struct.brcms_phy** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ON, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %14 = call i32 @ISNPHY(%struct.brcms_phy* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %76

17:                                               ; preds = %12
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @NREV_IS(i32 %21, i32 3)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @NREV_IS(i32 %28, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24, %17
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @phyregaddr, align 4
  %36 = call i32 @D11REGOFFS(i32 %35)
  %37 = call i32 @bcma_wflush16(i32 %34, i32 %36, i32 160)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @phyregdata, align 4
  %42 = call i32 @D11REGOFFS(i32 %41)
  %43 = call i32 @bcma_set16(i32 %40, i32 %42, i32 32768)
  br label %44

44:                                               ; preds = %31, %24
  br label %76

45:                                               ; preds = %2
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @NREV_IS(i32 %49, i32 3)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @NREV_IS(i32 %56, i32 4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52, %45
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @phyregaddr, align 4
  %64 = call i32 @D11REGOFFS(i32 %63)
  %65 = call i32 @bcma_wflush16(i32 %62, i32 %64, i32 160)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @phyregdata, align 4
  %70 = call i32 @D11REGOFFS(i32 %69)
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @bcma_write16(i32 %68, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %59, %52
  %74 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %75 = call i32 @wlc_phy_por_inform(%struct.brcms_phy_pub* %74)
  br label %76

76:                                               ; preds = %16, %73, %44
  ret void
}

declare dso_local i32 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @bcma_wflush16(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_set16(i32, i32, i32) #1

declare dso_local i32 @bcma_write16(i32, i32, i64) #1

declare dso_local i32 @wlc_phy_por_inform(%struct.brcms_phy_pub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
