; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_proc_id_connector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_proc_id_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.cn_msg = type { i32, i64, i32, i32, i64 }
%struct.proc_event = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.timespec = type { i32 }
%struct.cred = type { i32, i32, i32, i32 }

@CN_PROC_MSG_SIZE = common dso_local global i32 0, align 4
@proc_event_num_listeners = common dso_local global i32 0, align 4
@PROC_EVENT_UID = common dso_local global i32 0, align 4
@PROC_EVENT_GID = common dso_local global i32 0, align 4
@cn_proc_event_id = common dso_local global i32 0, align 4
@CN_IDX_PROC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_id_connector(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cn_msg*, align 8
  %6 = alloca %struct.proc_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @CN_PROC_MSG_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = call i32 @atomic_read(i32* @proc_event_num_listeners)
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %112

19:                                               ; preds = %2
  %20 = bitcast i32* %15 to %struct.cn_msg*
  store %struct.cn_msg* %20, %struct.cn_msg** %5, align 8
  %21 = load %struct.cn_msg*, %struct.cn_msg** %5, align 8
  %22 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.proc_event*
  store %struct.proc_event* %24, %struct.proc_event** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %27 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %32 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %39 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = call %struct.cred* @__task_cred(%struct.task_struct* %43)
  store %struct.cred* %44, %struct.cred** %10, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PROC_EVENT_UID, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %19
  %49 = load %struct.cred*, %struct.cred** %10, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %53 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load %struct.cred*, %struct.cred** %10, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %61 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  br label %89

65:                                               ; preds = %19
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PROC_EVENT_GID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.cred*, %struct.cred** %10, align 8
  %71 = getelementptr inbounds %struct.cred, %struct.cred* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %74 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load %struct.cred*, %struct.cred** %10, align 8
  %79 = getelementptr inbounds %struct.cred, %struct.cred* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %82 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  br label %88

86:                                               ; preds = %65
  %87 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %11, align 4
  br label %112

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %48
  %90 = call i32 (...) @rcu_read_unlock()
  %91 = load %struct.cn_msg*, %struct.cn_msg** %5, align 8
  %92 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %91, i32 0, i32 3
  %93 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %94 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %93, i32 0, i32 2
  %95 = call i32 @get_seq(i32* %92, i32* %94)
  %96 = call i32 @ktime_get_ts(%struct.timespec* %9)
  %97 = call i32 @timespec_to_ns(%struct.timespec* %9)
  %98 = load %struct.proc_event*, %struct.proc_event** %6, align 8
  %99 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %98, i32 0, i32 1
  %100 = call i32 @put_unaligned(i32 %97, i32* %99)
  %101 = load %struct.cn_msg*, %struct.cn_msg** %5, align 8
  %102 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %101, i32 0, i32 2
  %103 = call i32 @memcpy(i32* %102, i32* @cn_proc_event_id, i32 4)
  %104 = load %struct.cn_msg*, %struct.cn_msg** %5, align 8
  %105 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.cn_msg*, %struct.cn_msg** %5, align 8
  %107 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %106, i32 0, i32 0
  store i32 36, i32* %107, align 8
  %108 = load %struct.cn_msg*, %struct.cn_msg** %5, align 8
  %109 = load i32, i32* @CN_IDX_PROC, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @cn_netlink_send(%struct.cn_msg* %108, i32 %109, i32 %110)
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %89, %86, %18
  %113 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %11, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %112, %112
  ret void

116:                                              ; preds = %112
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

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
