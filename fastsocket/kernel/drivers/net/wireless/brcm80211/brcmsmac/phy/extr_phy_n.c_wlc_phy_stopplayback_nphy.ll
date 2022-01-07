; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_stopplayback_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_stopplayback_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPHY_sampleCmd_STOP = common dso_local global i32 0, align 4
@NPHY_iqloCalCmdGctl_IQLO_CAL_EN = common dso_local global i64 0, align 8
@BB_MULT_VALID_MASK = common dso_local global i32 0, align 4
@BB_MULT_MASK = common dso_local global i32 0, align 4
@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %10, i32 1)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = call i32 @read_phy_reg(%struct.brcms_phy* %13, i32 199)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = load i32, i32* @NPHY_sampleCmd_STOP, align 4
  %21 = call i32 @or_phy_reg(%struct.brcms_phy* %19, i32 195, i32 %20)
  br label %33

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = load i64, i64* @NPHY_iqloCalCmdGctl_IQLO_CAL_EN, align 8
  %29 = xor i64 %28, -1
  %30 = trunc i64 %29 to i32
  %31 = call i32 @and_phy_reg(%struct.brcms_phy* %27, i32 194, i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = call i32 @and_phy_reg(%struct.brcms_phy* %34, i32 195, i32 -5)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BB_MULT_VALID_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BB_MULT_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %4, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %50 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %48, i32 %49, i32 1, i32 87, i32 16, i32* %4)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %33
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @NREV_IS(i32 %57, i32 7)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @NREV_GE(i32 %64, i32 8)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60, %53
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %75 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %73, i32 128, i32 0, i32 0, i32 1, i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %85, i32 0)
  br label %87

87:                                               ; preds = %84, %79
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
