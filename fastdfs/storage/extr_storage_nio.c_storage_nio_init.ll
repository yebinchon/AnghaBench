; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_nio.c_storage_nio_init.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_nio.c_storage_nio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storage_nio_thread_data = type { i32 }
%struct.fast_task_info = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@g_nio_thread_data = common dso_local global %struct.storage_nio_thread_data* null, align 8
@FDFS_STORAGE_STAGE_NIO_RECV = common dso_local global i32 0, align 4
@IOEVENT_READ = common dso_local global i32 0, align 4
@client_sock_read = common dso_local global i32 0, align 4
@g_fdfs_network_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_task_info*)* @storage_nio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_nio_init(%struct.fast_task_info* %0) #0 {
  %2 = alloca %struct.fast_task_info*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.storage_nio_thread_data*, align 8
  store %struct.fast_task_info* %0, %struct.fast_task_info** %2, align 8
  %5 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %6 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.storage_nio_thread_data*, %struct.storage_nio_thread_data** @g_nio_thread_data, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.storage_nio_thread_data, %struct.storage_nio_thread_data* %9, i64 %13
  store %struct.storage_nio_thread_data* %14, %struct.storage_nio_thread_data** %4, align 8
  %15 = load i32, i32* @FDFS_STORAGE_STAGE_NIO_RECV, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %19 = load %struct.storage_nio_thread_data*, %struct.storage_nio_thread_data** %4, align 8
  %20 = getelementptr inbounds %struct.storage_nio_thread_data, %struct.storage_nio_thread_data* %19, i32 0, i32 0
  %21 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %22 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IOEVENT_READ, align 4
  %26 = load i32, i32* @client_sock_read, align 4
  %27 = load i32, i32* @g_fdfs_network_timeout, align 4
  %28 = call i32 @ioevent_set(%struct.fast_task_info* %18, i32* %20, i32 %24, i32 %25, i32 %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @ioevent_set(%struct.fast_task_info*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
