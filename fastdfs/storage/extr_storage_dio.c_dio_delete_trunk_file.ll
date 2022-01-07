; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_dio_delete_trunk_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_dio_delete_trunk_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dio_delete_trunk_file(%struct.fast_task_info* %0) #0 {
  %2 = alloca %struct.fast_task_info*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.fast_task_info* %0, %struct.fast_task_info** %2, align 8
  %5 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %6 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @trunk_file_delete(i32 %12, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)** %21, align 8
  %23 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %22(%struct.fast_task_info* %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)** %28, align 8
  %30 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %29(%struct.fast_task_info* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @trunk_file_delete(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
