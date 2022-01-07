; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_proc_exit_connector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_proc_exit_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, i32 }
%struct.cn_msg = type { i32, i64, i32, i32, i64 }
%struct.proc_event = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@CN_PROC_MSG_SIZE = common dso_local global i32 0, align 4
@proc_event_num_listeners = common dso_local global i32 0, align 4
@PROC_EVENT_EXIT = common dso_local global i32 0, align 4
@cn_proc_event_id = common dso_local global i32 0, align 4
@CN_IDX_PROC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_exit_connector(%struct.task_struct* %0) #0 {
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
  br label %74

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
  %32 = load i32, i32* @PROC_EVENT_EXIT, align 4
  %33 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %34 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %39 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %46 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %53 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.proc_event*, %struct.proc_event** %4, align 8
  %60 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %64 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %63, i32 0, i32 2
  %65 = call i32 @memcpy(i32* %64, i32* @cn_proc_event_id, i32 4)
  %66 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %67 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %69 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %68, i32 0, i32 0
  store i32 28, i32* %69, align 8
  %70 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %71 = load i32, i32* @CN_IDX_PROC, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @cn_netlink_send(%struct.cn_msg* %70, i32 %71, i32 %72)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %16, %15
  %75 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
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
