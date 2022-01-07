; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_proc_fork_connector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_proc_fork_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cn_msg = type { i32, i64, i32, i32, i64 }
%struct.proc_event = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@CN_PROC_MSG_SIZE = common dso_local global i32 0, align 4
@proc_event_num_listeners = common dso_local global i32 0, align 4
@PROC_EVENT_FORK = common dso_local global i32 0, align 4
@cn_proc_event_id = common dso_local global i32 0, align 4
@CN_IDX_PROC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_fork_connector(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.proc_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %9 = load i32, i32* @CN_PROC_MSG_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i32 @atomic_read(i32* @proc_event_num_listeners)
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %78

16:                                               ; preds = %1
  %17 = bitcast i32* %12 to %struct.cn_msg*
  store %struct.cn_msg* %17, %struct.cn_msg** %3, align 8
  %18 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %19 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.proc_event*
  store %struct.proc_event* %21, %struct.proc_event** %4, align 8
  %22 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %23 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %22, i32 0, i32 3
  %24 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %25 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %24, i32 0, i32 3
  %26 = call i32 @get_seq(i32* %23, i32* %25)
  %27 = call i32 @ktime_get_ts(%struct.timespec* %7)
  %28 = call i32 @timespec_to_ns(%struct.timespec* %7)
  %29 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %30 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %29, i32 0, i32 2
  %31 = call i32 @put_unaligned(i32 %28, i32* %30)
  %32 = load i32, i32* @PROC_EVENT_FORK, align 4
  %33 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %34 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %41 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %50 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  %53 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %57 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %64 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  %67 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %68 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %67, i32 0, i32 2
  %69 = call i32 @memcpy(i32* %68, i32* @cn_proc_event_id, i32 4)
  %70 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %71 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %73 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %72, i32 0, i32 0
  store i32 28, i32* %73, align 8
  %74 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %75 = load i32, i32* @CN_IDX_PROC, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @cn_netlink_send(%struct.cn_msg* %74, i32 %75, i32 %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %16, %15
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @get_seq(i32*, i32*) #2

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #2

declare dso_local i32 @put_unaligned(i32, i32*) #2

declare dso_local i32 @timespec_to_ns(%struct.timespec*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cn_netlink_send(%struct.cn_msg*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
