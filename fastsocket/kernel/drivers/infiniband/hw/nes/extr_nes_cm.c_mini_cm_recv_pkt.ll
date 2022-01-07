; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_recv_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_recv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { i32 }
%struct.nes_vnic = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nes_cm_node = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nes_cm_listener = type { i32, i64, i32* }
%struct.iphdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32, i64, i32, i32, i32 }
%struct.nes_cm_info = type { i64, i32*, i8*, i8*, i8*, i8* }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Received packet: dest=%pI4:0x%04X src=%pI4:0x%04X\0A\00", align 1
@NES_CM_LISTENER_ACTIVE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to find listener for the pkt\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to allocate node\0A\00", align 1
@cm_packets_dropped = common dso_local global i32 0, align 4
@NES_CM_STATE_LISTENING = common dso_local global i64 0, align 8
@NES_CM_STATE_TSA = common dso_local global i64 0, align 8
@cm_accel_dropped_pkts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_core*, %struct.nes_vnic*, %struct.sk_buff*)* @mini_cm_recv_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mini_cm_recv_pkt(%struct.nes_cm_core* %0, %struct.nes_vnic* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nes_cm_core*, align 8
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nes_cm_node*, align 8
  %9 = alloca %struct.nes_cm_listener*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca %struct.nes_cm_info, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %5, align 8
  store %struct.nes_vnic* %1, %struct.nes_vnic** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.nes_cm_node* null, %struct.nes_cm_node** %8, align 8
  store %struct.nes_cm_listener* null, %struct.nes_cm_listener** %9, align 8
  store i32 1, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %211

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 44
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %211

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.iphdr*
  store %struct.iphdr* %30, %struct.iphdr** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 12
  %35 = inttoptr i64 %34 to %struct.tcphdr*
  store %struct.tcphdr* %35, %struct.tcphdr** %11, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ntohl(i32 %38)
  %40 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @ntohs(i32 %43)
  %45 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @ntohl(i32 %48)
  %50 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 4
  store i8* %49, i8** %50, align 8
  %51 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %52 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ntohs(i32 %53)
  %55 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_be32(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_be32(i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* @NES_DBG_CM, align 4
  %65 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %69 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @nes_debug(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %67, i32* %15, i32 %70)
  br label %72

72:                                               ; preds = %26
  %73 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %74 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call %struct.nes_cm_node* @find_node(%struct.nes_cm_core* %73, i8* %75, i8* %77, i8* %79, i8* %81)
  store %struct.nes_cm_node* %82, %struct.nes_cm_node** %8, align 8
  %83 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %84 = icmp ne %struct.nes_cm_node* %83, null
  br i1 %84, label %161, label %85

85:                                               ; preds = %72
  %86 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %85
  store i32 0, i32* %13, align 4
  br label %209

96:                                               ; preds = %90
  %97 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %98 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* @NES_CM_LISTENER_ACTIVE_STATE, align 4
  %103 = call %struct.nes_cm_listener* @find_listener(%struct.nes_cm_core* %97, i8* %99, i8* %101, i32 %102)
  store %struct.nes_cm_listener* %103, %struct.nes_cm_listener** %9, align 8
  %104 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %9, align 8
  %105 = icmp ne %struct.nes_cm_listener* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 1
  store i32* null, i32** %107, align 8
  %108 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @NES_DBG_CM, align 4
  %110 = call i32 (i32, i8*, ...) @nes_debug(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %209

111:                                              ; preds = %96
  %112 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %9, align 8
  %113 = getelementptr inbounds %struct.nes_cm_listener, %struct.nes_cm_listener* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 1
  store i32* %114, i32** %115, align 8
  %116 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %9, align 8
  %117 = getelementptr inbounds %struct.nes_cm_listener, %struct.nes_cm_listener* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %12, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %121 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %122 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %9, align 8
  %123 = call %struct.nes_cm_node* @make_cm_node(%struct.nes_cm_core* %120, %struct.nes_vnic* %121, %struct.nes_cm_info* %12, %struct.nes_cm_listener* %122)
  store %struct.nes_cm_node* %123, %struct.nes_cm_node** %8, align 8
  %124 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %125 = icmp ne %struct.nes_cm_node* %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %111
  %127 = load i32, i32* @NES_DBG_CM, align 4
  %128 = call i32 (i32, i8*, ...) @nes_debug(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* @cm_packets_dropped, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @cm_packets_dropped, align 4
  %131 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %9, align 8
  %132 = getelementptr inbounds %struct.nes_cm_listener, %struct.nes_cm_listener* %131, i32 0, i32 0
  %133 = call i32 @atomic_dec(i32* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  br label %209

136:                                              ; preds = %111
  %137 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %138 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %136
  %142 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = load i64, i64* @NES_CM_STATE_LISTENING, align 8
  %148 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %149 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %158

150:                                              ; preds = %141, %136
  %151 = load i32, i32* @cm_packets_dropped, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @cm_packets_dropped, align 4
  %153 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %154 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %155 = call i32 @rem_ref_cm_node(%struct.nes_cm_core* %153, %struct.nes_cm_node* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %156)
  br label %209

158:                                              ; preds = %146
  %159 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %160 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %159)
  br label %190

161:                                              ; preds = %72
  %162 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %163 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NES_CM_STATE_TSA, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %161
  %168 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %169 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %167
  %175 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %176 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %177 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %178 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = call i32 @nes_queue_mgt_skbs(%struct.sk_buff* %175, %struct.nes_vnic* %176, %struct.TYPE_2__* %179)
  br label %188

181:                                              ; preds = %167
  %182 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %183 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %184 = call i32 @rem_ref_cm_node(%struct.nes_cm_core* %182, %struct.nes_cm_node* %183)
  %185 = call i32 @atomic_inc(i32* @cm_accel_dropped_pkts)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %186)
  br label %188

188:                                              ; preds = %181, %174
  br label %209

189:                                              ; preds = %161
  br label %190

190:                                              ; preds = %189, %158
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = call i32 @skb_reset_network_header(%struct.sk_buff* %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = call i32 @skb_set_transport_header(%struct.sk_buff* %193, i32 32)
  %195 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %196 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @ntohs(i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %204 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %205 = call i32 @process_packet(%struct.nes_cm_node* %202, %struct.sk_buff* %203, %struct.nes_cm_core* %204)
  %206 = load %struct.nes_cm_core*, %struct.nes_cm_core** %5, align 8
  %207 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %208 = call i32 @rem_ref_cm_node(%struct.nes_cm_core* %206, %struct.nes_cm_node* %207)
  br label %209

209:                                              ; preds = %190, %188, %150, %126, %106, %95
  %210 = load i32, i32* %13, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %209, %25, %18
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local %struct.nes_cm_node* @find_node(%struct.nes_cm_core*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.nes_cm_listener* @find_listener(%struct.nes_cm_core*, i8*, i8*, i32) #1

declare dso_local %struct.nes_cm_node* @make_cm_node(%struct.nes_cm_core*, %struct.nes_vnic*, %struct.nes_cm_info*, %struct.nes_cm_listener*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @rem_ref_cm_node(%struct.nes_cm_core*, %struct.nes_cm_node*) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @nes_queue_mgt_skbs(%struct.sk_buff*, %struct.nes_vnic*, %struct.TYPE_2__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @process_packet(%struct.nes_cm_node*, %struct.sk_buff*, %struct.nes_cm_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
