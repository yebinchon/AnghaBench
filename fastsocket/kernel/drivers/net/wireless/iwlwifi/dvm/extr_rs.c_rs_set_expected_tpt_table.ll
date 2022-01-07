; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_set_expected_tpt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_set_expected_tpt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i64, i64 }
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
  br label %179

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
  br label %179

41:                                               ; preds = %30
  %42 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_siso(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47
  %58 = load i32**, i32*** @expected_tpt_siso20MHz, align 8
  %59 = bitcast i32** %58 to i32*
  store i32* %59, i32** %5, align 8
  br label %123

60:                                               ; preds = %52, %41
  %61 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %62 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @is_siso(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32**, i32*** @expected_tpt_siso40MHz, align 8
  %68 = bitcast i32** %67 to i32*
  store i32* %68, i32** %5, align 8
  br label %122

69:                                               ; preds = %60
  %70 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @is_mimo2(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %82 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75
  %86 = load i32**, i32*** @expected_tpt_mimo2_20MHz, align 8
  %87 = bitcast i32** %86 to i32*
  store i32* %87, i32** %5, align 8
  br label %121

88:                                               ; preds = %80, %69
  %89 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %90 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @is_mimo2(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32**, i32*** @expected_tpt_mimo2_40MHz, align 8
  %96 = bitcast i32** %95 to i32*
  store i32* %96, i32** %5, align 8
  br label %120

97:                                               ; preds = %88
  %98 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @is_mimo3(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %105 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %110 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %103
  %114 = load i32**, i32*** @expected_tpt_mimo3_20MHz, align 8
  %115 = bitcast i32** %114 to i32*
  store i32* %115, i32** %5, align 8
  br label %119

116:                                              ; preds = %108, %97
  %117 = load i32**, i32*** @expected_tpt_mimo3_40MHz, align 8
  %118 = bitcast i32** %117 to i32*
  store i32* %118, i32** %5, align 8
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %94
  br label %121

121:                                              ; preds = %120, %85
  br label %122

122:                                              ; preds = %121, %66
  br label %123

123:                                              ; preds = %122, %57
  %124 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %130 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %5, align 8
  %135 = mul nsw i64 0, %7
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %138 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %137, i32 0, i32 0
  store i32* %136, i32** %138, align 8
  br label %179

139:                                              ; preds = %128, %123
  %140 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %141 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %146 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load i32*, i32** %5, align 8
  %151 = mul nsw i64 1, %7
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %154 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %153, i32 0, i32 0
  store i32* %152, i32** %154, align 8
  br label %178

155:                                              ; preds = %144, %139
  %156 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %157 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %155
  %161 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %162 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32*, i32** %5, align 8
  %167 = mul nsw i64 2, %7
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %170 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %169, i32 0, i32 0
  store i32* %168, i32** %170, align 8
  br label %177

171:                                              ; preds = %160, %155
  %172 = load i32*, i32** %5, align 8
  %173 = mul nsw i64 3, %7
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %4, align 8
  %176 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %175, i32 0, i32 0
  store i32* %174, i32** %176, align 8
  br label %177

177:                                              ; preds = %171, %165
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %25, %36, %178, %133
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
