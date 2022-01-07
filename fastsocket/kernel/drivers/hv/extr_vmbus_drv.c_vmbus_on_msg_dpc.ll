; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_on_msg_dpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_on_msg_dpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8** }
%struct.TYPE_7__ = type { i32 }
%struct.hv_message = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.onmessage_work_context = type { i32, i32 }

@hv_context = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4
@HVMSG_NONE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@vmbus_onmessage_work = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@HV_X64_MSR_EOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vmbus_on_msg_dpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_on_msg_dpc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hv_message*, align 8
  %6 = alloca %struct.onmessage_work_context*, align 8
  store i64 %0, i64* %2, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %3, align 4
  %8 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hv_context, i32 0, i32 0), align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.hv_message*
  %15 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %14, i64 %16
  store %struct.hv_message* %17, %struct.hv_message** %5, align 8
  br label %18

18:                                               ; preds = %1, %31, %60
  %19 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %20 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HVMSG_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %61

26:                                               ; preds = %18
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.onmessage_work_context* @kmalloc(i32 8, i32 %27)
  store %struct.onmessage_work_context* %28, %struct.onmessage_work_context** %6, align 8
  %29 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %6, align 8
  %30 = icmp eq %struct.onmessage_work_context* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %18

32:                                               ; preds = %26
  %33 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %6, align 8
  %34 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %33, i32 0, i32 0
  %35 = load i32, i32* @vmbus_onmessage_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %6, align 8
  %38 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %37, i32 0, i32 1
  %39 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %40 = call i32 @memcpy(i32* %38, %struct.hv_message* %39, i32 16)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vmbus_connection, i32 0, i32 0), align 4
  %42 = load %struct.onmessage_work_context*, %struct.onmessage_work_context** %6, align 8
  %43 = getelementptr inbounds %struct.onmessage_work_context, %struct.onmessage_work_context* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i64, i64* @HVMSG_NONE, align 8
  %47 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %48 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = call i32 (...) @mb()
  %51 = load %struct.hv_message*, %struct.hv_message** %5, align 8
  %52 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @HV_X64_MSR_EOM, align 4
  %59 = call i32 @wrmsrl(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %57, %45
  br label %18

61:                                               ; preds = %25
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.onmessage_work_context* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hv_message*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
