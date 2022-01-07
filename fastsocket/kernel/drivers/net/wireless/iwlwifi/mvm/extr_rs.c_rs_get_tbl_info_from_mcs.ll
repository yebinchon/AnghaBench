; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_get_tbl_info_from_mcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_get_tbl_info_from_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32, i32 }

@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@IWL_MAX_SEARCH = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@LQ_A = common dso_local global i32 0, align 4
@LQ_G = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@IWL_RATE_SISO_60M_PLCP = common dso_local global i32 0, align 4
@LQ_SISO = common dso_local global i32 0, align 4
@IWL_RATE_MIMO2_60M_PLCP = common dso_local global i32 0, align 4
@LQ_MIMO2 = common dso_local global i32 0, align 4
@IWL_MAX_11N_MIMO3_SEARCH = common dso_local global i32 0, align 4
@LQ_MIMO3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.iwl_scale_tbl_info*, i32*)* @rs_get_tbl_info_from_mcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_tbl_info_from_mcs(i32 %0, i32 %1, %struct.iwl_scale_tbl_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_scale_tbl_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_num_of_ant_from_rate(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %19 = call i32 @memset(%struct.iwl_scale_tbl_info* %18, i32 0, i32 20)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @iwl_hwrate_to_plcp_idx(i32 %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IWL_RATE_INVALID, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %124

31:                                               ; preds = %4
  %32 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %38 = ashr i32 %36, %37
  %39 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %40 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @LQ_NONE, align 4
  %42 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %43 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @IWL_MAX_SEARCH, align 4
  %45 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @LQ_A, align 4
  %60 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @LQ_G, align 4
  %64 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %51
  br label %123

68:                                               ; preds = %31
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @RATE_MCS_CHAN_WIDTH_40, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %83 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @rs_extract_rate(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @IWL_RATE_SISO_60M_PLCP, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @LQ_SISO, align 4
  %95 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %96 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %90
  br label %122

98:                                               ; preds = %84
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @IWL_RATE_MIMO2_60M_PLCP, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @LQ_MIMO2, align 4
  %107 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %108 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %102
  br label %121

110:                                              ; preds = %98
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @IWL_MAX_11N_MIMO3_SEARCH, align 4
  %115 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %116 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @LQ_MIMO3, align 4
  %118 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %119 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %110
  br label %121

121:                                              ; preds = %120, %109
  br label %122

122:                                              ; preds = %121, %97
  br label %123

123:                                              ; preds = %122, %67
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %27
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @get_num_of_ant_from_rate(i32) #1

declare dso_local i32 @memset(%struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @iwl_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @rs_extract_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
