; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rate_n_flags_from_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rate_n_flags_from_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iwl_priv = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i64, i32, i64, i64 }

@iwl_rates = common dso_local global %struct.TYPE_2__* null, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@IWL_LAST_OFDM_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid HT rate index %d\0A\00", align 1
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid tbl->lq_type %d\0A\00", align 1
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_DUP_MSK = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GF was set with SGI:SISO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i64)* @rate_n_flags_from_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %0, %struct.iwl_scale_tbl_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_scale_tbl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_scale_tbl_info* %1, %struct.iwl_scale_tbl_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @is_legacy(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %25, %15
  br label %98

34:                                               ; preds = %4
  %35 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @is_Ht(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @IWL_LAST_OFDM_RATE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @IWL_LAST_OFDM_RATE, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @is_siso(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %90

65:                                               ; preds = %49
  %66 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @is_mimo2(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %89

80:                                               ; preds = %65
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %80, %71
  br label %90

90:                                               ; preds = %89, %56
  br label %97

91:                                               ; preds = %34
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %93 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %94 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %90
  br label %98

98:                                               ; preds = %97, %33
  %99 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %100 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @is_Ht(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %167

113:                                              ; preds = %98
  %114 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %115 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %120 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @RATE_MCS_DUP_MSK, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %134 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i64, i64* %8, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %141
  %145 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %149 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @is_siso(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %144
  %154 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %155 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %164 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %165

165:                                              ; preds = %158, %153, %144
  br label %166

166:                                              ; preds = %165, %141
  br label %167

167:                                              ; preds = %166, %98
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i64 @is_Ht(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @is_siso(i32) #1

declare dso_local i64 @is_mimo2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
