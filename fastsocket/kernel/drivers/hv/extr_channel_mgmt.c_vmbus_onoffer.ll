; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel_message_header = type { i32 }
%struct.vmbus_channel_offer_channel = type { i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vmbus_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.hv_input_signal_event*, i32 }
%struct.hv_input_signal_event = type { %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate channel object\0A\00", align 1
@HV_HYPERCALL_PARAM_ALIGN = common dso_local global i32 0, align 4
@VMBUS_EVENT_CONNECTION_ID = common dso_local global i32 0, align 4
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@vmbus_process_offer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel_message_header*)* @vmbus_onoffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_onoffer(%struct.vmbus_channel_message_header* %0) #0 {
  %2 = alloca %struct.vmbus_channel_message_header*, align 8
  %3 = alloca %struct.vmbus_channel_offer_channel*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel_message_header* %0, %struct.vmbus_channel_message_header** %2, align 8
  %5 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %6 = bitcast %struct.vmbus_channel_message_header* %5 to %struct.vmbus_channel_offer_channel*
  store %struct.vmbus_channel_offer_channel* %6, %struct.vmbus_channel_offer_channel** %3, align 8
  %7 = call %struct.vmbus_channel* (...) @alloc_channel()
  store %struct.vmbus_channel* %7, %struct.vmbus_channel** %4, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %9 = icmp ne %struct.vmbus_channel* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %14 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 9
  %17 = ptrtoint i32* %16 to i64
  %18 = load i32, i32* @HV_HYPERCALL_PARAM_ALIGN, align 4
  %19 = call i64 @ALIGN(i64 %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.hv_input_signal_event*
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %22 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %21, i32 0, i32 8
  store %struct.hv_input_signal_event* %20, %struct.hv_input_signal_event** %22, align 8
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %24 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %23, i32 0, i32 8
  %25 = load %struct.hv_input_signal_event*, %struct.hv_input_signal_event** %24, align 8
  %26 = getelementptr inbounds %struct.hv_input_signal_event, %struct.hv_input_signal_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @VMBUS_EVENT_CONNECTION_ID, align 4
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %30 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %29, i32 0, i32 8
  %31 = load %struct.hv_input_signal_event*, %struct.hv_input_signal_event** %30, align 8
  %32 = getelementptr inbounds %struct.hv_input_signal_event, %struct.hv_input_signal_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %28, i32* %34, align 8
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %36 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %35, i32 0, i32 8
  %37 = load %struct.hv_input_signal_event*, %struct.hv_input_signal_event** %36, align 8
  %38 = getelementptr inbounds %struct.hv_input_signal_event, %struct.hv_input_signal_event* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %40 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %39, i32 0, i32 8
  %41 = load %struct.hv_input_signal_event*, %struct.hv_input_signal_event** %40, align 8
  %42 = getelementptr inbounds %struct.hv_input_signal_event, %struct.hv_input_signal_event* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* @vmbus_proto_version, align 8
  %44 = load i64, i64* @VERSION_WS2008, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %12
  %47 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %48 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %53 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %58 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %57, i32 0, i32 8
  %59 = load %struct.hv_input_signal_event*, %struct.hv_input_signal_event** %58, align 8
  %60 = getelementptr inbounds %struct.hv_input_signal_event, %struct.hv_input_signal_event* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 8
  br label %63

63:                                               ; preds = %46, %12
  %64 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %65 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @get_vp_index(i32* %66)
  %68 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %69 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %71 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %70, i32 0, i32 6
  %72 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %73 = call i32 @memcpy(i32* %71, %struct.vmbus_channel_offer_channel* %72, i32 24)
  %74 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %75 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = sdiv i32 %77, 32
  %79 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %80 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %82 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = srem i32 %84, 32
  %86 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %87 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %89 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %88, i32 0, i32 4
  %90 = load i32, i32* @vmbus_process_offer, align 4
  %91 = call i32 @INIT_WORK(i32* %89, i32 %90)
  %92 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %93 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %96 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %95, i32 0, i32 4
  %97 = call i32 @queue_work(i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %63, %10
  ret void
}

declare dso_local %struct.vmbus_channel* @alloc_channel(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @get_vp_index(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.vmbus_channel_offer_channel*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
