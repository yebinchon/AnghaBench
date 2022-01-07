; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_stay_in_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_stay_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.iwl_scale_tbl_info*, %struct.iwl_mvm* }
%struct.iwl_scale_tbl_info = type { i32* }
%struct.iwl_mvm = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@IWL_RATE_SCALE_FLUSH_INTVL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"LQ: stay is expired %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"LQ: stay in table clear win\0A\00", align 1
@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_lq_sta*, i32)* @rs_stay_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_stay_in_table(%struct.iwl_lq_sta* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_lq_sta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_scale_tbl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %10, i32 0, i32 11
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %9, align 8
  %13 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 10
  %18 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %18, i64 %20
  store %struct.iwl_scale_tbl_info* %21, %struct.iwl_scale_tbl_info** %5, align 8
  %22 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %146

26:                                               ; preds = %2
  %27 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IWL_RATE_SCALE_FLUSH_INTVL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @time_after(i32 %32, i64 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %42
  %51 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %50
  %59 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %58
  %64 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68, %50, %42, %39
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %73 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %74 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %77 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78, i32 %79)
  %81 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %82 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %84 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %83, i32 0, i32 6
  store i32 0, i32* %84, align 4
  %85 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %86 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %85, i32 0, i32 5
  store i32 0, i32* %86, align 8
  %87 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %88 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  br label %123

89:                                               ; preds = %68, %63, %58
  %90 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %91 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %95 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %98 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %96, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %89
  %102 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %103 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %105 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %118, %101
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @IWL_RATE_COUNT, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %5, align 8
  %112 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @rs_rate_scale_clear_window(i32* %116)
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %106

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %89
  br label %123

123:                                              ; preds = %122, %71
  %124 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %125 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @IWL_RATE_COUNT, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %5, align 8
  %135 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @rs_rate_scale_clear_window(i32* %139)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %129

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %2
  ret void
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @rs_rate_scale_clear_window(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
