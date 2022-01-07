; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_do_delete_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_do_delete_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@FDFS_STORAGE_FILE_OP_DELETE = common dso_local global i32 0, align 4
@STORAGE_STATUE_DEAL_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_task_info*, i32, i32, i32)* @storage_do_delete_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_do_delete_file(%struct.fast_task_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fast_task_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store %struct.fast_task_info* %0, %struct.fast_task_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fast_task_info*, %struct.fast_task_info** %6, align 8
  %14 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* @FDFS_STORAGE_FILE_OP_DELETE, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fast_task_info*, %struct.fast_task_info** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @storage_dio_get_thread_index(%struct.fast_task_info* %24, i32 %25, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fast_task_info*, %struct.fast_task_info** %6, align 8
  %39 = call i32 @storage_dio_queue_push(%struct.fast_task_info* %38)
  store i32 %39, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @STORAGE_STATUE_DEAL_FILE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @storage_dio_get_thread_index(%struct.fast_task_info*, i32, i32) #1

declare dso_local i32 @storage_dio_queue_push(%struct.fast_task_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
