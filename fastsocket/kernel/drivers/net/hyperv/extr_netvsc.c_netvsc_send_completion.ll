; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_send_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_send_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vmpacket_descriptor = type { i32, i64 }
%struct.netvsc_device = type { i32, i32, i64, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.hv_netvsc_packet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (i32)* }

@NVSP_MSG_TYPE_INIT_COMPLETE = common dso_local global i64 0, align 8
@NVSP_MSG1_TYPE_SEND_RECV_BUF_COMPLETE = common dso_local global i64 0, align 8
@NVSP_MSG1_TYPE_SEND_SEND_BUF_COMPLETE = common dso_local global i64 0, align 8
@NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE = common dso_local global i64 0, align 8
@RING_AVAIL_PERCENT_HIWATER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Unknown send completion packet type- %d received!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vmpacket_descriptor*)* @netvsc_send_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_send_completion(%struct.hv_device* %0, %struct.vmpacket_descriptor* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.vmpacket_descriptor*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.nvsp_message*, align 8
  %7 = alloca %struct.hv_netvsc_packet*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.vmpacket_descriptor* %1, %struct.vmpacket_descriptor** %4, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %11 = call %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device* %10)
  store %struct.netvsc_device* %11, %struct.netvsc_device** %5, align 8
  %12 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %13 = icmp ne %struct.netvsc_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %129

15:                                               ; preds = %2
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %17 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %16, i32 0, i32 6
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  %19 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %20 = ptrtoint %struct.vmpacket_descriptor* %19 to i64
  %21 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = add i64 %20, %25
  %27 = inttoptr i64 %26 to %struct.nvsp_message*
  store %struct.nvsp_message* %27, %struct.nvsp_message** %6, align 8
  %28 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %29 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NVSP_MSG_TYPE_INIT_COMPLETE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %15
  %35 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %36 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NVSP_MSG1_TYPE_SEND_RECV_BUF_COMPLETE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %43 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NVSP_MSG1_TYPE_SEND_SEND_BUF_COMPLETE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41, %34, %15
  %49 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %50 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %49, i32 0, i32 5
  %51 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %52 = call i32 @memcpy(i32* %50, %struct.nvsp_message* %51, i32 8)
  %53 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %54 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %53, i32 0, i32 4
  %55 = call i32 @complete(i32* %54)
  br label %129

56:                                               ; preds = %41
  %57 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %58 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %121

63:                                               ; preds = %56
  %64 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %65 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.hv_netvsc_packet*
  store %struct.hv_netvsc_packet* %67, %struct.hv_netvsc_packet** %7, align 8
  %68 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %69 = icmp ne %struct.hv_netvsc_packet* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %72 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %7, align 8
  %77 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %75(i32 %80)
  br label %82

82:                                               ; preds = %70, %63
  %83 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %84 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %83, i32 0, i32 3
  %85 = call i32 @atomic_dec_return(i32* %84)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %87 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %95 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %94, i32 0, i32 1
  %96 = call i32 @wake_up(i32* %95)
  br label %97

97:                                               ; preds = %93, %90, %82
  %98 = load %struct.net_device*, %struct.net_device** %8, align 8
  %99 = call i64 @netif_queue_stopped(%struct.net_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %103 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %101
  %107 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %108 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = call i64 @hv_ringbuf_avail_percent(i32* %110)
  %112 = load i64, i64* @RING_AVAIL_PERCENT_HIWATER, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %114, %106
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = call i32 @netif_wake_queue(%struct.net_device* %118)
  br label %120

120:                                              ; preds = %117, %114, %101, %97
  br label %128

121:                                              ; preds = %56
  %122 = load %struct.net_device*, %struct.net_device** %8, align 8
  %123 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %124 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @netdev_err(%struct.net_device* %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %121, %120
  br label %129

129:                                              ; preds = %14, %128, %48
  ret void
}

declare dso_local %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device*) #1

declare dso_local i32 @memcpy(i32*, %struct.nvsp_message*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @hv_ringbuf_avail_percent(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
