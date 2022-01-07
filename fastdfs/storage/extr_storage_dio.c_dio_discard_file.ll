; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_dio_discard_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_dio_discard_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 (%struct.fast_task_info*)*, i32 (%struct.fast_task_info*, i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dio_discard_file(%struct.fast_task_info* %0) #0 {
  %2 = alloca %struct.fast_task_info*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.fast_task_info* %0, %struct.fast_task_info** %2, align 8
  %4 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %5 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %10 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)** %29, align 8
  %31 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %32 = call i32 %30(%struct.fast_task_info* %31, i32 0)
  br label %41

33:                                               ; preds = %1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32 (%struct.fast_task_info*)*, i32 (%struct.fast_task_info*)** %37, align 8
  %39 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %40 = call i32 %38(%struct.fast_task_info* %39)
  br label %41

41:                                               ; preds = %33, %27
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
