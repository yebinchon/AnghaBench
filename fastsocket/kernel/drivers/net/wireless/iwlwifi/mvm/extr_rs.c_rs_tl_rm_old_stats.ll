; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tl_rm_old_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tl_rm_old_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_traffic_load = type { i64, i64, i64, i64*, i32 }

@TID_MAX_TIME_DIFF = common dso_local global i64 0, align 8
@TID_QUEUE_CELL_SPACING = common dso_local global i64 0, align 8
@TID_QUEUE_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_traffic_load*, i64)* @rs_tl_rm_old_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_tl_rm_old_stats(%struct.iwl_traffic_load* %0, i64 %1) #0 {
  %3 = alloca %struct.iwl_traffic_load*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.iwl_traffic_load* %0, %struct.iwl_traffic_load** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @TID_MAX_TIME_DIFF, align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %65, %2
  %10 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %66

22:                                               ; preds = %20
  %23 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  %37 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @TID_QUEUE_CELL_SPACING, align 8
  %45 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TID_QUEUE_MAX_SIZE, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %22
  %63 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %22
  br label %9

66:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
