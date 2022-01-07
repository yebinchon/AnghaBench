; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_stay_in_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_stay_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_lq_sta = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.il_scale_tbl_info*, %struct.il_priv* }
%struct.il_scale_tbl_info = type { i32* }
%struct.il_priv = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@RATE_SCALE_FLUSH_INTVL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"LQ: stay is expired %d %d %d\0A:\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"LQ: stay in table clear win\0A\00", align 1
@RATE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_lq_sta*, i32)* @il4965_rs_stay_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_stay_in_table(%struct.il_lq_sta* %0, i32 %1) #0 {
  %3 = alloca %struct.il_lq_sta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_scale_tbl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_priv*, align 8
  store %struct.il_lq_sta* %0, %struct.il_lq_sta** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %11 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %10, i32 0, i32 11
  %12 = load %struct.il_priv*, %struct.il_priv** %11, align 8
  store %struct.il_priv* %12, %struct.il_priv** %9, align 8
  %13 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %14 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %17 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %16, i32 0, i32 10
  %18 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %18, i64 %20
  store %struct.il_scale_tbl_info* %21, %struct.il_scale_tbl_info** %5, align 8
  %22 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %23 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %144

26:                                               ; preds = %2
  %27 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %28 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %34 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RATE_SCALE_FLUSH_INTVL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @time_after(i32 %32, i64 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %44 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %47 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %42
  %51 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %52 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %55 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %50
  %59 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %60 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %58
  %64 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %65 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68, %50, %42, %39
  %72 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %73 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %76 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %77, i32 %78)
  %80 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %81 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %83 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %85 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %87 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  br label %121

88:                                               ; preds = %68, %63, %58
  %89 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %90 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %94 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %97 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %88
  %101 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %102 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %101, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %116, %100
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @RATE_COUNT, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %5, align 8
  %110 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @il4965_rs_rate_scale_clear_win(i32* %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %104

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %88
  br label %121

121:                                              ; preds = %120, %71
  %122 = load %struct.il_lq_sta*, %struct.il_lq_sta** %3, align 8
  %123 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %139, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @RATE_COUNT, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %5, align 8
  %133 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @il4965_rs_rate_scale_clear_win(i32* %137)
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %127

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %142, %121
  br label %144

144:                                              ; preds = %143, %2
  ret void
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i32 @il4965_rs_rate_scale_clear_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
