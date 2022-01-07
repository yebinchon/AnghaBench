; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_queue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32, i64*, %struct.adb_request*, i64 }

@via = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@pmu_data_len = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@pmu_lock = common dso_local global i32 0, align 4
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
  %6 = load i32*, i32** @via, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %10 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %15 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %20 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  store i32 0, i32* %2, align 4
  br label %74

21:                                               ; preds = %13
  %22 = load i32**, i32*** @pmu_data_len, align 8
  %23 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %24 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %22, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %36 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %43 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %34, %21
  %47 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %48 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %47, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %48, align 8
  %49 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %50 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %52 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %53)
  %55 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %56 = icmp ne %struct.adb_request* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %59 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %60 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %59, i32 0, i32 3
  store %struct.adb_request* %58, %struct.adb_request** %60, align 8
  %61 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %61, %struct.adb_request** @last_req, align 8
  br label %71

62:                                               ; preds = %46
  %63 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %63, %struct.adb_request** @current_req, align 8
  %64 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %64, %struct.adb_request** @last_req, align 8
  %65 = load i64, i64* @pmu_state, align 8
  %66 = load i64, i64* @idle, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (...) @pmu_start()
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %41, %18, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pmu_start(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
