; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_set_expected_tpt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_set_expected_tpt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i64 }
%struct.iwl_scale_tbl_info = type { i32*, i64, i32, i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@expected_tpt_legacy = common dso_local global i8* null, align 8
@expected_tpt_siso20MHz = common dso_local global i32** null, align 8
@expected_tpt_siso40MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_20MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_40MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo3_20MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo3_40MHz = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*)* @rs_set_expected_tpt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %0, %struct.iwl_scale_tbl_info* %1) #0 {
  %3 = alloca %struct.iwl_lq_sta*, align 8
  %4 = alloca %struct.iwl_scale_tbl_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %3, align 8
  store %struct.iwl_scale_tbl_info* %1, %struct.iwl_scale_tbl_info** %4, align 8
  %6 = load i32, i32* @IWL_RATE_COUNT, align 4
  %7 = zext i32 %6 to i64
  %8 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_legacy(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @is_Ht(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %13, %2
  %21 = phi i1 [ false, %2 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** @expected_tpt_legacy, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  br label %164

30:                                               ; preds = %20
  %31 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_legacy(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** @expected_tpt_legacy, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %164

41:                                               ; preds = %30
  %42 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_siso(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32**, i32*** @expected_tpt_siso20MHz, align 8
  %54 = bitcast i32** %53 to i32*
  store i32* %54, i32** %5, align 8
  br label %108

55:                                               ; preds = %47, %41
  %56 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %57 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @is_siso(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32**, i32*** @expected_tpt_siso40MHz, align 8
  %63 = bitcast i32** %62 to i32*
  store i32* %63, i32** %5, align 8
  br label %107

64:                                               ; preds = %55
  %65 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_mimo2(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32**, i32*** @expected_tpt_mimo2_20MHz, align 8
  %77 = bitcast i32** %76 to i32*
  store i32* %77, i32** %5, align 8
  br label %106

78:                                               ; preds = %70, %64
  %79 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %80 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @is_mimo2(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32**, i32*** @expected_tpt_mimo2_40MHz, align 8
  %86 = bitcast i32** %85 to i32*
  store i32* %86, i32** %5, align 8
  br label %105

87:                                               ; preds = %78
  %88 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %89 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @is_mimo3(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %95 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32**, i32*** @expected_tpt_mimo3_20MHz, align 8
  %100 = bitcast i32** %99 to i32*
  store i32* %100, i32** %5, align 8
  br label %104

101:                                              ; preds = %93, %87
  %102 = load i32**, i32*** @expected_tpt_mimo3_40MHz, align 8
  %103 = bitcast i32** %102 to i32*
  store i32* %103, i32** %5, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %61
  br label %108

108:                                              ; preds = %107, %52
  %109 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %110 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %108
  %114 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %115 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load i32*, i32** %5, align 8
  %120 = mul nsw i64 0, %7
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %123 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %122, i32 0, i32 0
  store i32* %121, i32** %123, align 8
  br label %164

124:                                              ; preds = %113, %108
  %125 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %126 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %131 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load i32*, i32** %5, align 8
  %136 = mul nsw i64 1, %7
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %139 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %138, i32 0, i32 0
  store i32* %137, i32** %139, align 8
  br label %163

140:                                              ; preds = %129, %124
  %141 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %142 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %140
  %146 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %147 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32*, i32** %5, align 8
  %152 = mul nsw i64 2, %7
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %155 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %154, i32 0, i32 0
  store i32* %153, i32** %155, align 8
  br label %162

156:                                              ; preds = %145, %140
  %157 = load i32*, i32** %5, align 8
  %158 = mul nsw i64 3, %7
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %161 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %160, i32 0, i32 0
  store i32* %159, i32** %161, align 8
  br label %162

162:                                              ; preds = %156, %150
  br label %163

163:                                              ; preds = %162, %134
  br label %164

164:                                              ; preds = %25, %36, %163, %118
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i32 @is_Ht(i32) #1

declare dso_local i64 @is_siso(i32) #1

declare dso_local i64 @is_mimo2(i32) #1

declare dso_local i64 @is_mimo3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
