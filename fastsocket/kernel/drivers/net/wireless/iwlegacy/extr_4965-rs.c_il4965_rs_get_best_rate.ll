; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_get_best_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_get_best_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_lq_sta = type { i64, i32, %struct.il_scale_tbl_info* }
%struct.il_scale_tbl_info = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RATE_INVALID = common dso_local global i32 0, align 4
@RATE_DECREASE_TH = common dso_local global i32 0, align 4
@RATE_HIGH_TH = common dso_local global i32 0, align 4
@RATE_SCALE_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_lq_sta*, %struct.il_scale_tbl_info*, i32, i64)* @il4965_rs_get_best_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_get_best_rate(%struct.il_priv* %0, %struct.il_lq_sta* %1, %struct.il_scale_tbl_info* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.il_lq_sta*, align 8
  %8 = alloca %struct.il_scale_tbl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.il_scale_tbl_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %7, align 8
  store %struct.il_scale_tbl_info* %2, %struct.il_scale_tbl_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %21 = load %struct.il_lq_sta*, %struct.il_lq_sta** %7, align 8
  %22 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %21, i32 0, i32 2
  %23 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %22, align 8
  %24 = load %struct.il_lq_sta*, %struct.il_lq_sta** %7, align 8
  %25 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %23, i64 %26
  store %struct.il_scale_tbl_info* %27, %struct.il_scale_tbl_info** %11, align 8
  %28 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %11, align 8
  %29 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %11, align 8
  %36 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %8, align 8
  %42 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %14, align 8
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %20, align 8
  %45 = load i32, i32* @RATE_INVALID, align 4
  store i32 %45, i32* %18, align 4
  store i32 %45, i32* %17, align 4
  store i32 %45, i32* %16, align 4
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %129, %5
  %47 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %48 = load i64, i64* %20, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %8, align 8
  %51 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @il4965_rs_get_adjacent_rate(%struct.il_priv* %47, i64 %48, i32 %49, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = and i32 %54, 255
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %19, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i64, i64* %20, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 100, %62
  %64 = load %struct.il_lq_sta*, %struct.il_lq_sta** %7, align 8
  %65 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %46
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @RATE_DECREASE_TH, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @RATE_HIGH_TH, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32*, i32** %14, align 8
  %78 = load i64, i64* %20, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %94, label %83

83:                                               ; preds = %76, %72, %68, %46
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @RATE_SCALE_SWITCH, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32*, i32** %14, align 8
  %89 = load i64, i64* %20, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %87, %76
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @RATE_INVALID, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %15, align 4
  br label %130

100:                                              ; preds = %94
  %101 = load i64, i64* %20, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* @RATE_INVALID, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %20, align 8
  br label %110

109:                                              ; preds = %100
  br label %130

110:                                              ; preds = %106
  br label %129

111:                                              ; preds = %87, %83
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @RATE_INVALID, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %130

116:                                              ; preds = %111
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @RATE_INVALID, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %20, align 8
  br label %127

124:                                              ; preds = %116
  %125 = load i64, i64* %20, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %15, align 4
  br label %130

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128, %110
  br label %46

130:                                              ; preds = %124, %115, %109, %98
  %131 = load i32, i32* %15, align 4
  ret i32 %131
}

declare dso_local i32 @il4965_rs_get_adjacent_rate(%struct.il_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
