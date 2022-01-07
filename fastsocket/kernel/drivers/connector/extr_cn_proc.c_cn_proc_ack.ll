; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_cn_proc_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_cn_proc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32, i32, i32, i32, i64 }
%struct.proc_event = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }

@CN_PROC_MSG_SIZE = common dso_local global i32 0, align 4
@proc_event_num_listeners = common dso_local global i32 0, align 4
@PROC_EVENT_NONE = common dso_local global i32 0, align 4
@cn_proc_event_id = common dso_local global i32 0, align 4
@CN_IDX_PROC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @cn_proc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_proc_ack(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cn_msg*, align 8
  %8 = alloca %struct.proc_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timespec, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @CN_PROC_MSG_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = call i32 @atomic_read(i32* @proc_event_num_listeners)
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %57

20:                                               ; preds = %3
  %21 = bitcast i32* %16 to %struct.cn_msg*
  store %struct.cn_msg* %21, %struct.cn_msg** %7, align 8
  %22 = load %struct.cn_msg*, %struct.cn_msg** %7, align 8
  %23 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.proc_event*
  store %struct.proc_event* %25, %struct.proc_event** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cn_msg*, %struct.cn_msg** %7, align 8
  %28 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = call i32 @ktime_get_ts(%struct.timespec* %11)
  %30 = call i32 @timespec_to_ns(%struct.timespec* %11)
  %31 = load %struct.proc_event*, %struct.proc_event** %8, align 8
  %32 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %31, i32 0, i32 3
  %33 = call i32 @put_unaligned(i32 %30, i32* %32)
  %34 = load %struct.proc_event*, %struct.proc_event** %8, align 8
  %35 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 4
  %36 = load i32, i32* @PROC_EVENT_NONE, align 4
  %37 = load %struct.proc_event*, %struct.proc_event** %8, align 8
  %38 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.proc_event*, %struct.proc_event** %8, align 8
  %41 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.cn_msg*, %struct.cn_msg** %7, align 8
  %45 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %44, i32 0, i32 3
  %46 = call i32 @memcpy(i32* %45, i32* @cn_proc_event_id, i32 4)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.cn_msg*, %struct.cn_msg** %7, align 8
  %50 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cn_msg*, %struct.cn_msg** %7, align 8
  %52 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %51, i32 0, i32 2
  store i32 16, i32* %52, align 8
  %53 = load %struct.cn_msg*, %struct.cn_msg** %7, align 8
  %54 = load i32, i32* @CN_IDX_PROC, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @cn_netlink_send(%struct.cn_msg* %53, i32 %54, i32 %55)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %20, %19
  %58 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %61 [
    i32 0, label %60
    i32 1, label %60
  ]

60:                                               ; preds = %57, %57
  ret void

61:                                               ; preds = %57
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_read(i32*) #2

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
