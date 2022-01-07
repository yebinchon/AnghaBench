; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.hv_netvsc_packet = type { i64, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.netvsc_device = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NVSP_MSG1_TYPE_SEND_RNDIS_PKT = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@RING_AVAIL_PERCENT_LOWATER = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to send packet %p ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netvsc_send(%struct.hv_device* %0, %struct.hv_netvsc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_netvsc_packet*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvsp_message, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_netvsc_packet* %1, %struct.hv_netvsc_packet** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %12 = call %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device* %11)
  store %struct.netvsc_device* %12, %struct.netvsc_device** %6, align 8
  %13 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %14 = icmp ne %struct.netvsc_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %135

18:                                               ; preds = %2
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load i32, i32* @NVSP_MSG1_TYPE_SEND_RNDIS_PKT, align 4
  %23 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %8, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %26 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %39

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %8, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %49 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %56 = ptrtoint %struct.hv_netvsc_packet* %55 to i64
  store i64 %56, i64* %10, align 8
  br label %58

57:                                               ; preds = %39
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %60 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %65 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %68 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %71 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @vmbus_sendpacket_pagebuffer(%struct.TYPE_15__* %66, i32 %69, i64 %72, %struct.nvsp_message* %8, i32 24, i64 %73)
  store i32 %74, i32* %7, align 4
  br label %83

75:                                               ; preds = %58
  %76 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %77 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %81 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %82 = call i32 @vmbus_sendpacket(%struct.TYPE_15__* %78, %struct.nvsp_message* %8, i32 24, i64 %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %75, %63
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %88 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %87, i32 0, i32 0
  %89 = call i32 @atomic_inc(i32* %88)
  %90 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %91 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = call i64 @hv_ringbuf_avail_percent(i32* %93)
  %95 = load i64, i64* @RING_AVAIL_PERCENT_LOWATER, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %86
  %98 = load %struct.net_device*, %struct.net_device** %9, align 8
  %99 = call i32 @netif_stop_queue(%struct.net_device* %98)
  %100 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %101 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %100, i32 0, i32 0
  %102 = call i32 @atomic_read(i32* %101)
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.net_device*, %struct.net_device** %9, align 8
  %106 = call i32 @netif_wake_queue(%struct.net_device* %105)
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107, %86
  br label %133

109:                                              ; preds = %83
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @EAGAIN, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load %struct.net_device*, %struct.net_device** %9, align 8
  %116 = call i32 @netif_stop_queue(%struct.net_device* %115)
  %117 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %118 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %117, i32 0, i32 0
  %119 = call i32 @atomic_read(i32* %118)
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.net_device*, %struct.net_device** %9, align 8
  %123 = call i32 @netif_wake_queue(%struct.net_device* %122)
  %124 = load i32, i32* @ENOSPC, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %121, %114
  br label %132

127:                                              ; preds = %109
  %128 = load %struct.net_device*, %struct.net_device** %9, align 8
  %129 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @netdev_err(%struct.net_device* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.hv_netvsc_packet* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %126
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %15
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device*) #1

declare dso_local i32 @vmbus_sendpacket_pagebuffer(%struct.TYPE_15__*, i32, i64, %struct.nvsp_message*, i32, i64) #1

declare dso_local i32 @vmbus_sendpacket(%struct.TYPE_15__*, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @hv_ringbuf_avail_percent(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, %struct.hv_netvsc_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
