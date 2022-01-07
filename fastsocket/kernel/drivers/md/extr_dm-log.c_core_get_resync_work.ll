; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_core_get_resync_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_core_get_resync_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i64 }
%struct.log_c = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i64*)* @core_get_resync_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_get_resync_work(%struct.dm_dirty_log* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_dirty_log*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %8 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.log_c*
  store %struct.log_c* %10, %struct.log_c** %6, align 8
  %11 = load %struct.log_c*, %struct.log_c** %6, align 8
  %12 = getelementptr inbounds %struct.log_c, %struct.log_c* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.log_c*, %struct.log_c** %6, align 8
  %15 = getelementptr inbounds %struct.log_c, %struct.log_c* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %46, %19
  %21 = load %struct.log_c*, %struct.log_c** %6, align 8
  %22 = getelementptr inbounds %struct.log_c, %struct.log_c* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i64*
  %25 = load %struct.log_c*, %struct.log_c** %6, align 8
  %26 = getelementptr inbounds %struct.log_c, %struct.log_c* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.log_c*, %struct.log_c** %6, align 8
  %29 = getelementptr inbounds %struct.log_c, %struct.log_c* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @ext2_find_next_zero_bit(i64* %24, i64 %27, i64 %30)
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.log_c*, %struct.log_c** %6, align 8
  %37 = getelementptr inbounds %struct.log_c, %struct.log_c* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.log_c*, %struct.log_c** %6, align 8
  %41 = getelementptr inbounds %struct.log_c, %struct.log_c* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %62

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.log_c*, %struct.log_c** %6, align 8
  %48 = getelementptr inbounds %struct.log_c, %struct.log_c* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @log_test_bit(i32 %49, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %20, label %54

54:                                               ; preds = %46
  %55 = load %struct.log_c*, %struct.log_c** %6, align 8
  %56 = load %struct.log_c*, %struct.log_c** %6, align 8
  %57 = getelementptr inbounds %struct.log_c, %struct.log_c* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @log_set_bit(%struct.log_c* %55, i32 %58, i64 %60)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %44, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @ext2_find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @log_test_bit(i32, i64) #1

declare dso_local i32 @log_set_bit(%struct.log_c*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
