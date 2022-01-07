; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_read_from_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_read_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@dio_read_file = common dso_local global i32 0, align 4
@dio_read_finish_clean_up = common dso_local global i32 0, align 4
@FDFS_STORAGE_FILE_OP_READ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@g_extra_open_file_flags = common dso_local global i32 0, align 4
@STORAGE_PROTO_CMD_RESP = common dso_local global i32 0, align 4
@CRC32_XINIT = common dso_local global i32 0, align 4
@STORAGE_STATUE_DEAL_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_task_info*, i64, i64, i32, i32)* @storage_read_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_read_from_file(%struct.fast_task_info* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fast_task_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store %struct.fast_task_info* %0, %struct.fast_task_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %17 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %13, align 8
  %22 = load i32, i32* @dio_read_file, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @dio_read_finish_clean_up, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 16, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @FDFS_STORAGE_FILE_OP_READ, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = load i32, i32* @g_extra_open_file_flags, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 9
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 8
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %48, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 7
  store i64 %50, i64* %52, align 8
  %53 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @storage_dio_get_thread_index(%struct.fast_task_info* %53, i32 %54, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %65 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %64, i32 0, i32 0
  store i32 16, i32* %65, align 8
  %66 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %67 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %14, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @STORAGE_PROTO_CMD_RESP, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @long2buff(i64 %75, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %5
  %85 = load i32, i32* @CRC32_XINIT, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %5
  %89 = load %struct.fast_task_info*, %struct.fast_task_info** %7, align 8
  %90 = call i32 @storage_dio_queue_push(%struct.fast_task_info* %89)
  store i32 %90, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @close(i64 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %6, align 4
  br label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @STORAGE_STATUE_DEAL_FILE, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @storage_dio_get_thread_index(%struct.fast_task_info*, i32, i32) #1

declare dso_local i32 @long2buff(i64, i32) #1

declare dso_local i32 @storage_dio_queue_push(%struct.fast_task_info*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
