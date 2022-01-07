; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.hv_device = type { i32 }
%struct.vmpacket_descriptor = type { i32, i32 }
%struct.netvsc_device = type { i64, i32, %struct.TYPE_15__, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.vmtransfer_page_packet_header = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.hv_netvsc_packet = type { %struct.TYPE_14__, i32, i8*, %struct.hv_device*, %struct.xferpage_packet*, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.hv_netvsc_packet*, i32, i32 (%struct.hv_netvsc_packet*)* }
%struct.xferpage_packet = type { i32, i8*, i32 }

@listHead = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@VM_PKT_DATA_USING_XFER_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown packet type received - %d\0A\00", align 1
@NVSP_MSG1_TYPE_SEND_RNDIS_PKT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Unknown nvsp packet type received- %d\0A\00", align 1
@NETVSC_RECEIVE_BUFFER_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid xfer page set id - expecting %x got %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"Got only %d netvsc pkt...needed %d pkts. Dropping this xfer page packet completely!\0A\00", align 1
@NVSP_STAT_FAIL = common dso_local global i32 0, align 4
@NVSP_STAT_SUCCESS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"Needed %d netvsc pkts to satisfy this xfer page...got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vmpacket_descriptor*)* @netvsc_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_receive(%struct.hv_device* %0, %struct.vmpacket_descriptor* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.vmpacket_descriptor*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.vmtransfer_page_packet_header*, align 8
  %7 = alloca %struct.nvsp_message*, align 8
  %8 = alloca %struct.hv_netvsc_packet*, align 8
  %9 = alloca %struct.xferpage_packet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.net_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.vmpacket_descriptor* %1, %struct.vmpacket_descriptor** %4, align 8
  store %struct.hv_netvsc_packet* null, %struct.hv_netvsc_packet** %8, align 8
  store %struct.xferpage_packet* null, %struct.xferpage_packet** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @listHead, i32 0, i32 0), align 8
  %15 = call i32 @LIST_HEAD(i64 %14)
  %16 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %17 = call %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device* %16)
  store %struct.netvsc_device* %17, %struct.netvsc_device** %5, align 8
  %18 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %19 = icmp ne %struct.netvsc_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %249

21:                                               ; preds = %2
  %22 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %23 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %22, i32 0, i32 3
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %13, align 8
  %25 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %26 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VM_PKT_DATA_USING_XFER_PAGES, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.net_device*, %struct.net_device** %13, align 8
  %32 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %249

36:                                               ; preds = %21
  %37 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %38 = ptrtoint %struct.vmpacket_descriptor* %37 to i64
  %39 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %40 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = add i64 %38, %43
  %45 = inttoptr i64 %44 to %struct.nvsp_message*
  store %struct.nvsp_message* %45, %struct.nvsp_message** %7, align 8
  %46 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %47 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NVSP_MSG1_TYPE_SEND_RNDIS_PKT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %36
  %53 = load %struct.net_device*, %struct.net_device** %13, align 8
  %54 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %55 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %249

60:                                               ; preds = %36
  %61 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %62 = bitcast %struct.vmpacket_descriptor* %61 to %struct.vmtransfer_page_packet_header*
  store %struct.vmtransfer_page_packet_header* %62, %struct.vmtransfer_page_packet_header** %6, align 8
  %63 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %64 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NETVSC_RECEIVE_BUFFER_ID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.net_device*, %struct.net_device** %13, align 8
  %70 = load i64, i64* @NETVSC_RECEIVE_BUFFER_ID, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %73 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %71, i64 %74)
  br label %249

76:                                               ; preds = %60
  %77 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %78 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %77, i32 0, i32 1
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %101, %76
  %82 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %83 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %82, i32 0, i32 2
  %84 = call i32 @list_empty(%struct.TYPE_15__* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %89 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @list_move_tail(i64 %91, %struct.TYPE_15__* @listHead)
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %96 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %102

101:                                              ; preds = %87
  br label %81

102:                                              ; preds = %100, %81
  %103 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %104 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %103, i32 0, i32 1
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %145

109:                                              ; preds = %102
  %110 = load %struct.net_device*, %struct.net_device** %13, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %113 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  %116 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %110, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %115)
  %117 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %118 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %117, i32 0, i32 1
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %130, %109
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @listHead, i32 0, i32 0), align 8
  %127 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %128 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %127, i32 0, i32 2
  %129 = call i32 @list_move_tail(i64 %126, %struct.TYPE_15__* %128)
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %10, align 4
  br label %122

133:                                              ; preds = %122
  %134 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %135 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %134, i32 0, i32 1
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %139 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %140 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NVSP_STAT_FAIL, align 4
  %144 = call i32 @netvsc_send_recv_completion(%struct.hv_device* %138, i32 %142, i32 %143)
  br label %249

145:                                              ; preds = %102
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @listHead, i32 0, i32 0), align 8
  %147 = inttoptr i64 %146 to %struct.xferpage_packet*
  store %struct.xferpage_packet* %147, %struct.xferpage_packet** %9, align 8
  %148 = load %struct.xferpage_packet*, %struct.xferpage_packet** %9, align 8
  %149 = getelementptr inbounds %struct.xferpage_packet, %struct.xferpage_packet* %148, i32 0, i32 2
  %150 = call i32 @list_del(i32* %149)
  %151 = load i8*, i8** @NVSP_STAT_SUCCESS, align 8
  %152 = load %struct.xferpage_packet*, %struct.xferpage_packet** %9, align 8
  %153 = getelementptr inbounds %struct.xferpage_packet, %struct.xferpage_packet* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load %struct.xferpage_packet*, %struct.xferpage_packet** %9, align 8
  %157 = getelementptr inbounds %struct.xferpage_packet, %struct.xferpage_packet* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.xferpage_packet*, %struct.xferpage_packet** %9, align 8
  %159 = getelementptr inbounds %struct.xferpage_packet, %struct.xferpage_packet* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %162 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %145
  %166 = load %struct.net_device*, %struct.net_device** %13, align 8
  %167 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %168 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.xferpage_packet*, %struct.xferpage_packet** %9, align 8
  %171 = getelementptr inbounds %struct.xferpage_packet, %struct.xferpage_packet* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %166, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %165, %145
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %246, %174
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %249

180:                                              ; preds = %175
  %181 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @listHead, i32 0, i32 0), align 8
  %182 = inttoptr i64 %181 to %struct.hv_netvsc_packet*
  store %struct.hv_netvsc_packet* %182, %struct.hv_netvsc_packet** %8, align 8
  %183 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %184 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %183, i32 0, i32 6
  %185 = call i32 @list_del(i32* %184)
  %186 = load i8*, i8** @NVSP_STAT_SUCCESS, align 8
  %187 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %188 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load %struct.xferpage_packet*, %struct.xferpage_packet** %9, align 8
  %190 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %191 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %190, i32 0, i32 4
  store %struct.xferpage_packet* %189, %struct.xferpage_packet** %191, align 8
  %192 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %193 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  store i32 (%struct.hv_netvsc_packet*)* @netvsc_receive_completion, i32 (%struct.hv_netvsc_packet*)** %195, align 8
  %196 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %197 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %198 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store %struct.hv_netvsc_packet* %196, %struct.hv_netvsc_packet** %200, align 8
  %201 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %202 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %203 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %202, i32 0, i32 3
  store %struct.hv_device* %201, %struct.hv_device** %203, align 8
  %204 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %205 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %209 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 8
  %212 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %213 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %216 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %215, i32 0, i32 2
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %214, %222
  %224 = inttoptr i64 %223 to i8*
  %225 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %226 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  %227 = load %struct.vmtransfer_page_packet_header*, %struct.vmtransfer_page_packet_header** %6, align 8
  %228 = getelementptr inbounds %struct.vmtransfer_page_packet_header, %struct.vmtransfer_page_packet_header* %227, i32 0, i32 2
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %236 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %238 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %239 = call i32 @rndis_filter_receive(%struct.hv_device* %237, %struct.hv_netvsc_packet* %238)
  %240 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %241 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %243, align 8
  %245 = call i32 @netvsc_receive_completion(%struct.hv_netvsc_packet* %244)
  br label %246

246:                                              ; preds = %180
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %175

249:                                              ; preds = %20, %30, %52, %68, %133, %175
  ret void
}

declare dso_local i32 @LIST_HEAD(i64) #1

declare dso_local %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_15__*) #1

declare dso_local i32 @list_move_tail(i64, %struct.TYPE_15__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netvsc_send_recv_completion(%struct.hv_device*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @netvsc_receive_completion(%struct.hv_netvsc_packet*) #1

declare dso_local i32 @rndis_filter_receive(%struct.hv_device*, %struct.hv_netvsc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
