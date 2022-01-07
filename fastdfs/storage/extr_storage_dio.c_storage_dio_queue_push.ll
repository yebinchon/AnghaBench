; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_storage_dio_queue_push.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_storage_dio_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storage_dio_context = type { i32 }
%struct.fast_task_info = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@g_dio_contexts = common dso_local global %struct.storage_dio_context* null, align 8
@FDFS_STORAGE_STAGE_DIO_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_dio_queue_push(%struct.fast_task_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fast_task_info*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.storage_dio_context*, align 8
  %7 = alloca i32, align 4
  store %struct.fast_task_info* %0, %struct.fast_task_info** %3, align 8
  %8 = load %struct.fast_task_info*, %struct.fast_task_info** %3, align 8
  %9 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.storage_dio_context*, %struct.storage_dio_context** @g_dio_contexts, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.storage_dio_context, %struct.storage_dio_context* %14, i64 %18
  store %struct.storage_dio_context* %19, %struct.storage_dio_context** %6, align 8
  %20 = load i32, i32* @FDFS_STORAGE_STAGE_DIO_THREAD, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.storage_dio_context*, %struct.storage_dio_context** %6, align 8
  %26 = getelementptr inbounds %struct.storage_dio_context, %struct.storage_dio_context* %25, i32 0, i32 0
  %27 = load %struct.fast_task_info*, %struct.fast_task_info** %3, align 8
  %28 = call i32 @blocked_queue_push(i32* %26, %struct.fast_task_info* %27)
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.fast_task_info*, %struct.fast_task_info** %3, align 8
  %32 = call i32 @add_to_deleted_list(%struct.fast_task_info* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @blocked_queue_push(i32*, %struct.fast_task_info*) #1

declare dso_local i32 @add_to_deleted_list(%struct.fast_task_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
