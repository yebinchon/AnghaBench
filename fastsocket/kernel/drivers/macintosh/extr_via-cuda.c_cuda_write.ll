; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-cuda.c_cuda_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-cuda.c_cuda_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i64*, i32, %struct.adb_request*, i64, i64 }

@CUDA_PACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@cuda_lock = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@cuda_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*)* @cuda_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_write(%struct.adb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i64, align 8
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  %5 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %6 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %11 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CUDA_PACKET, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9, %1
  %18 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %19 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %9
  %23 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %24 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %23, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %24, align 8
  %25 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %26 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %28 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %30 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @cuda_lock, i64 %31)
  %33 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %34 = icmp ne %struct.adb_request* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %37 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %38 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %37, i32 0, i32 3
  store %struct.adb_request* %36, %struct.adb_request** %38, align 8
  %39 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %39, %struct.adb_request** @last_req, align 8
  br label %49

40:                                               ; preds = %22
  %41 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %41, %struct.adb_request** @current_req, align 8
  %42 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %42, %struct.adb_request** @last_req, align 8
  %43 = load i64, i64* @cuda_state, align 8
  %44 = load i64, i64* @idle, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @cuda_start()
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @cuda_lock, i64 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cuda_start(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
