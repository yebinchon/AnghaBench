; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_save_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_save_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { i64, i64, i64 }
%struct.fs3270 = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

@SIGHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270_request*, i8*)* @fs3270_save_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs3270_save_callback(%struct.raw3270_request* %0, i8* %1) #0 {
  %3 = alloca %struct.raw3270_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fs3270*, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %7 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fs3270*
  store %struct.fs3270* %9, %struct.fs3270** %5, align 8
  %10 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %11 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 5
  store i32 %17, i32* %15, align 4
  %18 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %19 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 5
  store i64 %23, i64* %21, align 8
  %24 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %25 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %30 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28, %2
  %34 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %35 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %40 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SIGHUP, align 4
  %43 = call i32 @kill_pid(i64 %41, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %46 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %59

47:                                               ; preds = %28
  %48 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %49 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %54 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %58 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %44
  %60 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %61 = call i32 @raw3270_request_reset(%struct.raw3270_request* %60)
  %62 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %63 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %62, i32 0, i32 1
  %64 = call i32 @wake_up(i32* %63)
  ret void
}

declare dso_local i32 @kill_pid(i64, i32, i32) #1

declare dso_local i32 @raw3270_request_reset(%struct.raw3270_request*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
