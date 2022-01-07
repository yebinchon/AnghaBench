; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_storage_dio_terminate.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_dio.c_storage_dio_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storage_dio_context = type { i32 }

@g_dio_contexts = common dso_local global %struct.storage_dio_context* null, align 8
@g_dio_thread_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @storage_dio_terminate() #0 {
  %1 = alloca %struct.storage_dio_context*, align 8
  %2 = alloca %struct.storage_dio_context*, align 8
  %3 = load %struct.storage_dio_context*, %struct.storage_dio_context** @g_dio_contexts, align 8
  %4 = load i32, i32* @g_dio_thread_count, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.storage_dio_context, %struct.storage_dio_context* %3, i64 %5
  store %struct.storage_dio_context* %6, %struct.storage_dio_context** %2, align 8
  %7 = load %struct.storage_dio_context*, %struct.storage_dio_context** @g_dio_contexts, align 8
  store %struct.storage_dio_context* %7, %struct.storage_dio_context** %1, align 8
  br label %8

8:                                                ; preds = %16, %0
  %9 = load %struct.storage_dio_context*, %struct.storage_dio_context** %1, align 8
  %10 = load %struct.storage_dio_context*, %struct.storage_dio_context** %2, align 8
  %11 = icmp ult %struct.storage_dio_context* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.storage_dio_context*, %struct.storage_dio_context** %1, align 8
  %14 = getelementptr inbounds %struct.storage_dio_context, %struct.storage_dio_context* %13, i32 0, i32 0
  %15 = call i32 @blocked_queue_terminate(i32* %14)
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.storage_dio_context*, %struct.storage_dio_context** %1, align 8
  %18 = getelementptr inbounds %struct.storage_dio_context, %struct.storage_dio_context* %17, i32 1
  store %struct.storage_dio_context* %18, %struct.storage_dio_context** %1, align 8
  br label %8

19:                                               ; preds = %8
  ret void
}

declare dso_local i32 @blocked_queue_terminate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
