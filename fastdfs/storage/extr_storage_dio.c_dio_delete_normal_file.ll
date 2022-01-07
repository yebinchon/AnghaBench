; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_dio_delete_normal_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_dio_delete_normal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@errno = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dio_delete_normal_file(%struct.fast_task_info* %0) #0 {
  %2 = alloca %struct.fast_task_info*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.fast_task_info* %0, %struct.fast_task_info** %2, align 8
  %5 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %6 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @unlink(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* @errno, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @errno, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EACCES, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)** %25, align 8
  %27 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %26(%struct.fast_task_info* %27, i32 %28)
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fast_task_info*, i32)*, i32 (%struct.fast_task_info*, i32)** %33, align 8
  %35 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %34(%struct.fast_task_info* %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
