; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_packet_task = type { i32, i64, i32, i64, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__, %struct.fwnet_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fwnet_device = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rfc2734_header = type { i32, i32 }

@RFC2374_UNFRAG_HDR_SIZE = common dso_local global i32 0, align 4
@RFC2374_FRAG_HDR_SIZE = common dso_local global i32 0, align 4
@IEEE1394_ALL_NODES = common dso_local global i64 0, align 8
@IANA_SPECIFIER_ID = common dso_local global i32 0, align 4
@RFC2734_SW_VERSION = common dso_local global i32 0, align 4
@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@IEEE1394_BROADCAST_CHANNEL = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@fwnet_write_complete = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnet_packet_task*)* @fwnet_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_send_packet(%struct.fwnet_packet_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwnet_packet_task*, align 8
  %4 = alloca %struct.fwnet_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfc2734_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fwnet_packet_task* %0, %struct.fwnet_packet_task** %3, align 8
  %11 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %12 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %11, i32 0, i32 9
  %13 = load %struct.fwnet_device*, %struct.fwnet_device** %12, align 8
  store %struct.fwnet_device* %13, %struct.fwnet_device** %4, align 8
  %14 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %15 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %18 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %17, i32 0, i32 8
  %19 = call i32 @fwnet_get_hdr_lf(%struct.TYPE_7__* %18)
  switch i32 %19, label %55 [
    i32 128, label %20
    i32 131, label %34
    i32 130, label %34
    i32 129, label %34
  ]

20:                                               ; preds = %1
  %21 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %22 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* @RFC2374_UNFRAG_HDR_SIZE, align 4
  %25 = call i32* @skb_push(%struct.TYPE_6__* %23, i32 %24)
  %26 = bitcast i32* %25 to %struct.rfc2734_header*
  store %struct.rfc2734_header* %26, %struct.rfc2734_header** %6, align 8
  %27 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %28 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rfc2734_header*, %struct.rfc2734_header** %6, align 8
  %32 = getelementptr inbounds %struct.rfc2734_header, %struct.rfc2734_header* %31, i32 0, i32 1
  %33 = call i32 @put_unaligned_be32(i32 %30, i32* %32)
  br label %57

34:                                               ; preds = %1, %1, %1
  %35 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %36 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %35, i32 0, i32 5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* @RFC2374_FRAG_HDR_SIZE, align 4
  %39 = call i32* @skb_push(%struct.TYPE_6__* %37, i32 %38)
  %40 = bitcast i32* %39 to %struct.rfc2734_header*
  store %struct.rfc2734_header* %40, %struct.rfc2734_header** %6, align 8
  %41 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %42 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rfc2734_header*, %struct.rfc2734_header** %6, align 8
  %46 = getelementptr inbounds %struct.rfc2734_header, %struct.rfc2734_header* %45, i32 0, i32 1
  %47 = call i32 @put_unaligned_be32(i32 %44, i32* %46)
  %48 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %49 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rfc2734_header*, %struct.rfc2734_header** %6, align 8
  %53 = getelementptr inbounds %struct.rfc2734_header, %struct.rfc2734_header* %52, i32 0, i32 0
  %54 = call i32 @put_unaligned_be32(i32 %51, i32* %53)
  br label %57

55:                                               ; preds = %1
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %34, %20
  %58 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %59 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IEEE1394_ALL_NODES, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %127

63:                                               ; preds = %57
  %64 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %65 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = call i32 (...) @smp_rmb()
  %70 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %71 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %76 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %75, i32 0, i32 5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32* @skb_push(%struct.TYPE_6__* %77, i32 8)
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* @IANA_SPECIFIER_ID, align 4
  %82 = ashr i32 %81, 8
  %83 = or i32 %80, %82
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @put_unaligned_be32(i32 %83, i32* %84)
  %86 = load i32, i32* @IANA_SPECIFIER_ID, align 4
  %87 = and i32 %86, 255
  %88 = shl i32 %87, 24
  %89 = load i32, i32* @RFC2734_SW_VERSION, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = call i32 @put_unaligned_be32(i32 %90, i32* %92)
  %94 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %95 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %94, i32 0, i32 3
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %98 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %97, i32 0, i32 7
  %99 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %100 = load i32, i32* @IEEE1394_BROADCAST_CHANNEL, align 4
  %101 = call i64 @fw_stream_packet_destination_id(i32 3, i32 %100, i32 0)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @SCODE_100, align 4
  %104 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %105 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add i32 %109, 8
  %111 = load i32, i32* @fwnet_write_complete, align 4
  %112 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %113 = call i32 @fw_send_request(%struct.TYPE_8__* %96, i32* %98, i32 %99, i64 %101, i32 %102, i32 %103, i64 0, i32 %108, i32 %110, i32 %111, %struct.fwnet_packet_task* %112)
  %114 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %115 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %114, i32 0, i32 1
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %119 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %118, i32 0, i32 4
  %120 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %121 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %120, i32 0, i32 4
  %122 = call i32 @list_add_tail(i32* %119, i32* %121)
  %123 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %124 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %123, i32 0, i32 1
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  store i32 0, i32* %2, align 4
  br label %173

127:                                              ; preds = %57
  %128 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %129 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %132 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %131, i32 0, i32 7
  %133 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %134 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %135 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %138 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %141 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %144 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %147 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @fwnet_write_complete, align 4
  %153 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %154 = call i32 @fw_send_request(%struct.TYPE_8__* %130, i32* %132, i32 %133, i64 %136, i32 %139, i32 %142, i64 %145, i32 %150, i32 %151, i32 %152, %struct.fwnet_packet_task* %153)
  %155 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %156 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %155, i32 0, i32 1
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @spin_lock_irqsave(i32* %156, i64 %157)
  %159 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %3, align 8
  %160 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %159, i32 0, i32 4
  %161 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %162 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %161, i32 0, i32 2
  %163 = call i32 @list_add_tail(i32* %160, i32* %162)
  %164 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %165 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %164, i32 0, i32 1
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load i32, i32* @jiffies, align 4
  %169 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %170 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %169, i32 0, i32 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %127, %63
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @fwnet_get_hdr_lf(%struct.TYPE_7__*) #1

declare dso_local i32* @skb_push(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_send_request(%struct.TYPE_8__*, i32*, i32, i64, i32, i32, i64, i32, i32, i32, %struct.fwnet_packet_task*) #1

declare dso_local i64 @fw_stream_packet_destination_id(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
