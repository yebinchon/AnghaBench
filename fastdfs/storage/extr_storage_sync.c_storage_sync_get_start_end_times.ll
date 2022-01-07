; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_sync.c_storage_sync_get_start_end_times.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_sync.c_storage_sync_get_start_end_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.tm = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32*)* @storage_sync_get_start_end_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storage_sync_get_start_end_times(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tm, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = call i32 @localtime_r(i32* %6, %struct.tm* %11)
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = call i32 @mktime(%struct.tm* %11)
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39, %5
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 86400
  store i32 %49, i32* %6, align 4
  %50 = call i32 @localtime_r(i32* %6, %struct.tm* %11)
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %39, %31
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = call i32 @mktime(%struct.tm* %11)
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  ret void
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
