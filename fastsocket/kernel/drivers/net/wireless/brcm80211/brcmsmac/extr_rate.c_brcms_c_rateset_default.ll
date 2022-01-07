; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_rateset = type { i32 }

@PHY_TYPE_HT = common dso_local global i32 0, align 4
@PHY_TYPE_N = common dso_local global i32 0, align 4
@PHY_TYPE_LCN = common dso_local global i32 0, align 4
@PHY_TYPE_SSN = common dso_local global i32 0, align 4
@BRCM_BAND_5G = common dso_local global i32 0, align 4
@BRCMS_20_MHZ = common dso_local global i64 0, align 8
@ofdm_mimo_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@ofdm_40bw_mimo_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@cck_ofdm_mimo_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@cck_ofdm_40bw_mimo_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@PHY_TYPE_LP = common dso_local global i32 0, align 4
@ofdm_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@cck_ofdm_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@PHY_TYPE_A = common dso_local global i32 0, align 4
@PHY_TYPE_G = common dso_local global i32 0, align 4
@cck_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@BRCMS_RATES_CCK = common dso_local global i32 0, align 4
@BRCMS_RATES_CCK_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_rateset_default(%struct.brcms_c_rateset* %0, %struct.brcms_c_rateset* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.brcms_c_rateset*, align 8
  %11 = alloca %struct.brcms_c_rateset*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.brcms_c_rateset*, align 8
  %20 = alloca %struct.brcms_c_rateset, align 4
  store %struct.brcms_c_rateset* %0, %struct.brcms_c_rateset** %10, align 8
  store %struct.brcms_c_rateset* %1, %struct.brcms_c_rateset** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @PHY_TYPE_HT, align 4
  %23 = call i64 @PHYTYPE_IS(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @PHY_TYPE_N, align 4
  %28 = call i64 @PHYTYPE_IS(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PHY_TYPE_LCN, align 4
  %33 = call i64 @PHYTYPE_IS(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @PHY_TYPE_SSN, align 4
  %38 = call i64 @PHYTYPE_IS(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35, %30, %25, %9
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @BRCM_BAND_5G, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* @BRCMS_20_MHZ, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, %struct.brcms_c_rateset* @ofdm_mimo_rates, %struct.brcms_c_rateset* @ofdm_40bw_mimo_rates
  store %struct.brcms_c_rateset* %49, %struct.brcms_c_rateset** %19, align 8
  br label %56

50:                                               ; preds = %40
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* @BRCMS_20_MHZ, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, %struct.brcms_c_rateset* @cck_ofdm_mimo_rates, %struct.brcms_c_rateset* @cck_ofdm_40bw_mimo_rates
  store %struct.brcms_c_rateset* %55, %struct.brcms_c_rateset** %19, align 8
  br label %56

56:                                               ; preds = %50, %44
  br label %84

57:                                               ; preds = %35
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @PHY_TYPE_LP, align 4
  %60 = call i64 @PHYTYPE_IS(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @BRCM_BAND_5G, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, %struct.brcms_c_rateset* @ofdm_rates, %struct.brcms_c_rateset* @cck_ofdm_rates
  store %struct.brcms_c_rateset* %67, %struct.brcms_c_rateset** %19, align 8
  br label %83

68:                                               ; preds = %57
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @PHY_TYPE_A, align 4
  %71 = call i64 @PHYTYPE_IS(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store %struct.brcms_c_rateset* @ofdm_rates, %struct.brcms_c_rateset** %19, align 8
  br label %82

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @PHY_TYPE_G, align 4
  %77 = call i64 @PHYTYPE_IS(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store %struct.brcms_c_rateset* @cck_ofdm_rates, %struct.brcms_c_rateset** %19, align 8
  br label %81

80:                                               ; preds = %74
  store %struct.brcms_c_rateset* @cck_rates, %struct.brcms_c_rateset** %19, align 8
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %73
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %56
  %85 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %11, align 8
  %86 = icmp ne %struct.brcms_c_rateset* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %19, align 8
  store %struct.brcms_c_rateset* %88, %struct.brcms_c_rateset** %11, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %19, align 8
  %91 = call i32 @brcms_c_rateset_copy(%struct.brcms_c_rateset* %90, %struct.brcms_c_rateset* %20)
  %92 = load i64, i64* %18, align 8
  %93 = call i32 @brcms_c_rateset_mcs_upd(%struct.brcms_c_rateset* %20, i64 %92)
  %94 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %10, align 8
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @BRCMS_RATES_CCK, align 4
  br label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @BRCMS_RATES_CCK_OFDM, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @brcms_c_rateset_filter(%struct.brcms_c_rateset* %20, %struct.brcms_c_rateset* %94, i32 0, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %10, align 8
  %107 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %11, align 8
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i64, i64* %18, align 8
  br label %113

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i64 [ %111, %110 ], [ 1, %112 ]
  %115 = call i32 @brcms_c_rate_hwrs_filter_sort_validate(%struct.brcms_c_rateset* %106, %struct.brcms_c_rateset* %107, i32 0, i64 %114)
  ret void
}

declare dso_local i64 @PHYTYPE_IS(i32, i32) #1

declare dso_local i32 @brcms_c_rateset_copy(%struct.brcms_c_rateset*, %struct.brcms_c_rateset*) #1

declare dso_local i32 @brcms_c_rateset_mcs_upd(%struct.brcms_c_rateset*, i64) #1

declare dso_local i32 @brcms_c_rateset_filter(%struct.brcms_c_rateset*, %struct.brcms_c_rateset*, i32, i32, i32, i32) #1

declare dso_local i32 @brcms_c_rate_hwrs_filter_sort_validate(%struct.brcms_c_rateset*, %struct.brcms_c_rateset*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
