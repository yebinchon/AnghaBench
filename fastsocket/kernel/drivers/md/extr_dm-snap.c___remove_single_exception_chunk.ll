; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___remove_single_exception_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___remove_single_exception_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32 }
%struct.dm_exception = type { i64, i32 }

@.str = private unnamed_addr constant [75 x i8] c"Corruption detected: exception for block %llu is on disk but not in memory\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Attempt to merge block %llu from the middle of a chunk range [%llu - %llu]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*, i64)* @__remove_single_exception_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remove_single_exception_chunk(%struct.dm_snapshot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dm_exception*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %8 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.dm_exception* @dm_lookup_exception(i32* %8, i64 %9)
  store %struct.dm_exception* %10, %struct.dm_exception** %6, align 8
  %11 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %12 = icmp ne %struct.dm_exception* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 (i8*, i64, ...) @DMERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %20 = call i64 @dm_consecutive_chunk_count(%struct.dm_exception* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %24 = call i32 @dm_remove_exception(%struct.dm_exception* %23)
  %25 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %26 = call i32 @free_completed_exception(%struct.dm_exception* %25)
  store i32 0, i32* %3, align 4
  br label %69

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %30 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %35 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %39 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %66

42:                                               ; preds = %27
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %45 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %48 = call i64 @dm_consecutive_chunk_count(%struct.dm_exception* %47)
  %49 = add nsw i64 %46, %48
  %50 = icmp ne i64 %43, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %54 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %57 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %60 = call i64 @dm_consecutive_chunk_count(%struct.dm_exception* %59)
  %61 = add i64 %58, %60
  %62 = call i32 (i8*, i64, ...) @DMERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %55, i64 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %68 = call i32 @dm_consecutive_chunk_count_dec(%struct.dm_exception* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %51, %22, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.dm_exception* @dm_lookup_exception(i32*, i64) #1

declare dso_local i32 @DMERR(i8*, i64, ...) #1

declare dso_local i64 @dm_consecutive_chunk_count(%struct.dm_exception*) #1

declare dso_local i32 @dm_remove_exception(%struct.dm_exception*) #1

declare dso_local i32 @free_completed_exception(%struct.dm_exception*) #1

declare dso_local i32 @dm_consecutive_chunk_count_dec(%struct.dm_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
