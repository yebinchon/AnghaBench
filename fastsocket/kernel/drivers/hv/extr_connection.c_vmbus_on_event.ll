; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_on_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i8** }
%union.hv_synic_event_flags = type { i64* }

@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@VERSION_WIN7 = common dso_local global i64 0, align 8
@MAX_NUM_CHANNELS_SUPPORTED = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@HV_EVENT_FLAGS_DWORD_COUNT = common dso_local global i64 0, align 8
@hv_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_on_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.hv_synic_event_flags*, align 8
  store i64 %0, i64* %2, align 8
  store i64* null, i64** %7, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* @vmbus_proto_version, align 8
  %13 = load i64, i64* @VERSION_WS2008, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @vmbus_proto_version, align 8
  %17 = load i64, i64* @VERSION_WIN7, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @MAX_NUM_CHANNELS_SUPPORTED, align 4
  %21 = ashr i32 %20, 5
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vmbus_connection, i32 0, i32 0), align 8
  store i64* %23, i64** %7, align 8
  br label %39

24:                                               ; preds = %15
  %25 = load i64, i64* @HV_EVENT_FLAGS_DWORD_COUNT, align 8
  store i64 %25, i64* %4, align 8
  %26 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hv_context, i32 0, i32 0), align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to %union.hv_synic_event_flags*
  %33 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.hv_synic_event_flags, %union.hv_synic_event_flags* %32, i64 %34
  store %union.hv_synic_event_flags* %35, %union.hv_synic_event_flags** %10, align 8
  %36 = load %union.hv_synic_event_flags*, %union.hv_synic_event_flags** %10, align 8
  %37 = bitcast %union.hv_synic_event_flags* %36 to i64**
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %7, align 8
  br label %39

39:                                               ; preds = %24, %19
  %40 = load i64*, i64** %7, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %86

43:                                               ; preds = %39
  store i64 0, i64* %3, align 8
  br label %44

44:                                               ; preds = %83, %43
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %44
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %83

55:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = call i64 @sync_test_and_clear_bit(i32 %60, i64* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load i64, i64* %3, align 8
  %68 = shl i64 %67, 5
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %79

75:                                               ; preds = %66
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @process_chn_event(i64 %76)
  br label %78

78:                                               ; preds = %75, %59
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %56

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %3, align 8
  br label %44

86:                                               ; preds = %42, %44
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @sync_test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @process_chn_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
