; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rx_iq_est_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rx_iq_est_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.phy_iq_est = type { i32, i32, i32 }

@NPHY_IqestCmd_iqMode = common dso_local global i32 0, align 4
@NPHY_IqestCmd_iqstart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"HW error: rxiq est\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_rx_iq_est_nphy(%struct.brcms_phy* %0, %struct.phy_iq_est* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca %struct.phy_iq_est*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store %struct.phy_iq_est* %1, %struct.phy_iq_est** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @write_phy_reg(%struct.brcms_phy* %12, i32 299, i32 %13)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = shl i64 %16, 0
  %18 = trunc i64 %17 to i32
  %19 = call i32 @mod_phy_reg(%struct.brcms_phy* %15, i32 298, i32 255, i32 %18)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %21 = load i32, i32* @NPHY_IqestCmd_iqMode, align 4
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @NPHY_IqestCmd_iqMode, align 4
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = call i32 @mod_phy_reg(%struct.brcms_phy* %20, i32 297, i32 %21, i32 %28)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %31 = load i32, i32* @NPHY_IqestCmd_iqstart, align 4
  %32 = load i32, i32* @NPHY_IqestCmd_iqstart, align 4
  %33 = call i32 @mod_phy_reg(%struct.brcms_phy* %30, i32 297, i32 %31, i32 %32)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %35 = call i32 @read_phy_reg(%struct.brcms_phy* %34, i32 297)
  %36 = load i32, i32* @NPHY_IqestCmd_iqstart, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @SPINWAIT(i32 %39, i32 10000)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %42 = call i32 @read_phy_reg(%struct.brcms_phy* %41, i32 297)
  %43 = load i32, i32* @NPHY_IqestCmd_iqstart, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @WARN(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %109

48:                                               ; preds = %27
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %50 = call i32 @read_phy_reg(%struct.brcms_phy* %49, i32 297)
  %51 = load i32, i32* @NPHY_IqestCmd_iqstart, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %48
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %105, %54
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %55
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @NPHY_IqestipwrAccHi(i64 %64)
  %66 = call i32 @read_phy_reg(%struct.brcms_phy* %63, i32 %65)
  %67 = shl i32 %66, 16
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @NPHY_IqestipwrAccLo(i64 %69)
  %71 = call i32 @read_phy_reg(%struct.brcms_phy* %68, i32 %70)
  %72 = or i32 %67, %71
  %73 = load %struct.phy_iq_est*, %struct.phy_iq_est** %7, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %73, i64 %74
  %76 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @NPHY_IqestqpwrAccHi(i64 %78)
  %80 = call i32 @read_phy_reg(%struct.brcms_phy* %77, i32 %79)
  %81 = shl i32 %80, 16
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @NPHY_IqestqpwrAccLo(i64 %83)
  %85 = call i32 @read_phy_reg(%struct.brcms_phy* %82, i32 %84)
  %86 = or i32 %81, %85
  %87 = load %struct.phy_iq_est*, %struct.phy_iq_est** %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %87, i64 %88
  %90 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @NPHY_IqestIqAccHi(i64 %92)
  %94 = call i32 @read_phy_reg(%struct.brcms_phy* %91, i32 %93)
  %95 = shl i32 %94, 16
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @NPHY_IqestIqAccLo(i64 %97)
  %99 = call i32 @read_phy_reg(%struct.brcms_phy* %96, i32 %98)
  %100 = or i32 %95, %99
  %101 = load %struct.phy_iq_est*, %struct.phy_iq_est** %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %101, i64 %102
  %104 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %62
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %55

108:                                              ; preds = %55
  br label %109

109:                                              ; preds = %47, %108, %48
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @NPHY_IqestipwrAccHi(i64) #1

declare dso_local i32 @NPHY_IqestipwrAccLo(i64) #1

declare dso_local i32 @NPHY_IqestqpwrAccHi(i64) #1

declare dso_local i32 @NPHY_IqestqpwrAccLo(i64) #1

declare dso_local i32 @NPHY_IqestIqAccHi(i64) #1

declare dso_local i32 @NPHY_IqestIqAccLo(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
