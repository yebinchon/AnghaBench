; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_set_expected_tpt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_set_expected_tpt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_lq_sta = type { i64, i64 }
%struct.il_scale_tbl_info = type { i32*, i64, i32, i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@expected_tpt_legacy = common dso_local global i8* null, align 8
@expected_tpt_siso20MHz = common dso_local global i32** null, align 8
@expected_tpt_siso40MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_20MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_40MHz = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_lq_sta*, %struct.il_scale_tbl_info*)* @il4965_rs_set_expected_tpt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %0, %struct.il_scale_tbl_info* %1) #0 {
  %3 = alloca %struct.il_lq_sta*, align 8
  %4 = alloca %struct.il_scale_tbl_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.il_lq_sta* %0, %struct.il_lq_sta** %3, align 8
  store %struct.il_scale_tbl_info* %1, %struct.il_scale_tbl_info** %4, align 8
  %6 = load i32, i32* @RATE_COUNT, align 4
  %7 = zext i32 %6 to i64
  %8 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %9 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_legacy(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %15 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %14, i32 0, i32 3
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
  %28 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %29 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  br label %149

30:                                               ; preds = %20
  %31 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %32 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_legacy(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** @expected_tpt_legacy, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %40 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %149

41:                                               ; preds = %30
  %42 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %43 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_siso(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %49 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %54 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47
  %58 = load i32**, i32*** @expected_tpt_siso20MHz, align 8
  %59 = bitcast i32** %58 to i32*
  store i32* %59, i32** %5, align 8
  br label %93

60:                                               ; preds = %52, %41
  %61 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %62 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @is_siso(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32**, i32*** @expected_tpt_siso40MHz, align 8
  %68 = bitcast i32** %67 to i32*
  store i32* %68, i32** %5, align 8
  br label %92

69:                                               ; preds = %60
  %70 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %71 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @is_mimo2(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %77 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %82 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75
  %86 = load i32**, i32*** @expected_tpt_mimo2_20MHz, align 8
  %87 = bitcast i32** %86 to i32*
  store i32* %87, i32** %5, align 8
  br label %91

88:                                               ; preds = %80, %69
  %89 = load i32**, i32*** @expected_tpt_mimo2_40MHz, align 8
  %90 = bitcast i32** %89 to i32*
  store i32* %90, i32** %5, align 8
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %95 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %100 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = mul nsw i64 0, %7
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %108 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  br label %149

109:                                              ; preds = %98, %93
  %110 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %111 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %116 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i32*, i32** %5, align 8
  %121 = mul nsw i64 1, %7
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %124 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  br label %148

125:                                              ; preds = %114, %109
  %126 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %127 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %125
  %131 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %132 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32*, i32** %5, align 8
  %137 = mul nsw i64 2, %7
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %140 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %139, i32 0, i32 0
  store i32* %138, i32** %140, align 8
  br label %147

141:                                              ; preds = %130, %125
  %142 = load i32*, i32** %5, align 8
  %143 = mul nsw i64 3, %7
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %4, align 8
  %146 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %145, i32 0, i32 0
  store i32* %144, i32** %146, align 8
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %25, %36, %148, %103
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i32 @is_Ht(i32) #1

declare dso_local i64 @is_siso(i32) #1

declare dso_local i64 @is_mimo2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
