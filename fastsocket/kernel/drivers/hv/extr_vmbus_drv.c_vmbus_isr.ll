; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32**, i8** }
%struct.hv_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%union.hv_synic_event_flags = type { i32* }

@hv_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@VERSION_WIN7 = common dso_local global i64 0, align 8
@HVMSG_NONE = common dso_local global i64 0, align 8
@msg_dpc = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vmbus_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hv_message*, align 8
  %9 = alloca %union.hv_synic_event_flags*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hv_context, i32 0, i32 2), align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %union.hv_synic_event_flags*
  %24 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %union.hv_synic_event_flags, %union.hv_synic_event_flags* %23, i64 %25
  store %union.hv_synic_event_flags* %26, %union.hv_synic_event_flags** %9, align 8
  %27 = load i64, i64* @vmbus_proto_version, align 8
  %28 = load i64, i64* @VERSION_WS2008, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i64, i64* @vmbus_proto_version, align 8
  %32 = load i64, i64* @VERSION_WIN7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %21
  %35 = load %union.hv_synic_event_flags*, %union.hv_synic_event_flags** %9, align 8
  %36 = bitcast %union.hv_synic_event_flags* %35 to i32**
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = bitcast i32* %38 to i64*
  %40 = call i64 @sync_test_and_clear_bit(i32 0, i64* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %34
  br label %45

44:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hv_context, i32 0, i32 1), align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @tasklet_schedule(i32* %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hv_context, i32 0, i32 0), align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = bitcast i8* %61 to %struct.hv_message*
  %63 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %62, i64 %64
  store %struct.hv_message* %65, %struct.hv_message** %8, align 8
  %66 = load %struct.hv_message*, %struct.hv_message** %8, align 8
  %67 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HVMSG_NONE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  %73 = call i32 @tasklet_schedule(i32* @msg_dpc)
  br label %74

74:                                               ; preds = %72, %55
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @IRQ_NONE, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %77, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @sync_test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
