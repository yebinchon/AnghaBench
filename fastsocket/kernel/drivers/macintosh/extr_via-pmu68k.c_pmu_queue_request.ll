; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_queue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32, i64*, %struct.adb_request*, i64 }

@pmu_data_len = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@pmu_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmu_queue_request(%struct.adb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  %6 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %7 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %12 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  store i32 0, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i32**, i32*** @pmu_data_len, align 8
  %15 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %16 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %14, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %13
  %27 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %28 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %35 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %26, %13
  %39 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %40 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %39, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %40, align 8
  %41 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %42 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %44 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @local_irq_save(i64 %45)
  %47 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %48 = icmp ne %struct.adb_request* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %51 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %52 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %51, i32 0, i32 3
  store %struct.adb_request* %50, %struct.adb_request** %52, align 8
  %53 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %53, %struct.adb_request** @last_req, align 8
  br label %63

54:                                               ; preds = %38
  %55 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %55, %struct.adb_request** @current_req, align 8
  %56 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %56, %struct.adb_request** @last_req, align 8
  %57 = load i64, i64* @pmu_state, align 8
  %58 = load i64, i64* @idle, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (...) @pmu_start()
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %33, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pmu_start(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
