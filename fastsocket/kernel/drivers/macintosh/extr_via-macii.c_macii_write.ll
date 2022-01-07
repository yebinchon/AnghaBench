; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i64*, i32, %struct.adb_request*, i64, i64 }

@ADB_PACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@macii_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*)* @macii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macii_write(%struct.adb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request*, align 8
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  %4 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %5 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %10 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ADB_PACKET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %18 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 15
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %8, %1
  %22 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %23 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %28 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %27, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %28, align 8
  %29 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %30 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %32 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %34 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %36 = icmp ne %struct.adb_request* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %39 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %40 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %39, i32 0, i32 3
  store %struct.adb_request* %38, %struct.adb_request** %40, align 8
  %41 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %41, %struct.adb_request** @last_req, align 8
  br label %51

42:                                               ; preds = %26
  %43 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %43, %struct.adb_request** @current_req, align 8
  %44 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %44, %struct.adb_request** @last_req, align 8
  %45 = load i64, i64* @macii_state, align 8
  %46 = load i64, i64* @idle, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @macii_start()
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50, %37
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @macii_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
