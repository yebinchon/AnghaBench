; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cq_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i64, i32 }
%struct.bna_ccb = type { i64, %struct.bna_rcb**, i32, i32, %struct.bnad_rx_ctrl*, %struct.bna_cq_entry*, %struct.bna_pkt_rate }
%struct.bna_rcb = type { i64, i32, i32, %struct.TYPE_2__*, %struct.bnad_rx_unmap_q* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bnad_rx_unmap_q = type { i32, %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { i32 }
%struct.bnad_rx_ctrl = type { i32 }
%struct.bna_cq_entry = type { i64, i32, i32, i32, i32 }
%struct.bna_pkt_rate = type { i32 }
%struct.sk_buff = type { i32 }

@BNA_CQ_EF_MAC_ERROR = common dso_local global i32 0, align 4
@BNA_CQ_EF_FCS_ERROR = common dso_local global i32 0, align 4
@BNA_CQ_EF_TOO_LONG = common dso_local global i32 0, align 4
@flags_cksum_prot_mask = common dso_local global i32 0, align 4
@flags_tcp4 = common dso_local global i32 0, align 4
@flags_udp4 = common dso_local global i32 0, align 4
@flags_tcp6 = common dso_local global i32 0, align 4
@flags_udp6 = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@BNA_CQ_EF_VLAN = common dso_local global i32 0, align 4
@BNAD_RXQ_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_ccb*, i32)* @bnad_cq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_cq_process(%struct.bnad* %0, %struct.bna_ccb* %1, i32 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bna_cq_entry*, align 8
  %8 = alloca %struct.bna_cq_entry*, align 8
  %9 = alloca %struct.bna_rcb*, align 8
  %10 = alloca %struct.bnad_rx_unmap_q*, align 8
  %11 = alloca %struct.bnad_rx_unmap*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.bna_pkt_rate*, align 8
  %14 = alloca %struct.bnad_rx_ctrl*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.bnad_rx_ctrl*, align 8
  %20 = alloca %struct.bnad_rx_ctrl*, align 8
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_ccb* %1, %struct.bna_ccb** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.bna_rcb* null, %struct.bna_rcb** %9, align 8
  %21 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %22 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %21, i32 0, i32 6
  store %struct.bna_pkt_rate* %22, %struct.bna_pkt_rate** %13, align 8
  %23 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %24 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %23, i32 0, i32 4
  %25 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %24, align 8
  store %struct.bnad_rx_ctrl* %25, %struct.bnad_rx_ctrl** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.bnad*, %struct.bnad** %4, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @prefetch(i32 %28)
  %30 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %31 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %30, i32 0, i32 5
  %32 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %31, align 8
  store %struct.bna_cq_entry* %32, %struct.bna_cq_entry** %7, align 8
  %33 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %7, align 8
  %34 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %35 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %33, i64 %36
  store %struct.bna_cq_entry* %37, %struct.bna_cq_entry** %8, align 8
  br label %38

38:                                               ; preds = %246, %3
  %39 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %40 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %268

49:                                               ; preds = %47
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  %52 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %53 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %57 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ntohs(i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.bna_pkt_rate*, %struct.bna_pkt_rate** %13, align 8
  %61 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %62 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ntohs(i32 %63)
  %65 = call i32 @BNA_UPDATE_PKT_CNT(%struct.bna_pkt_rate* %60, i32 %64)
  %66 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %67 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @bna_is_small_rxq(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %49
  %72 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %73 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %72, i32 0, i32 1
  %74 = load %struct.bna_rcb**, %struct.bna_rcb*** %73, align 8
  %75 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %74, i64 1
  %76 = load %struct.bna_rcb*, %struct.bna_rcb** %75, align 8
  store %struct.bna_rcb* %76, %struct.bna_rcb** %9, align 8
  br label %83

77:                                               ; preds = %49
  %78 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %79 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %78, i32 0, i32 1
  %80 = load %struct.bna_rcb**, %struct.bna_rcb*** %79, align 8
  %81 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %80, i64 0
  %82 = load %struct.bna_rcb*, %struct.bna_rcb** %81, align 8
  store %struct.bna_rcb* %82, %struct.bna_rcb** %9, align 8
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %85 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %84, i32 0, i32 4
  %86 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %85, align 8
  store %struct.bnad_rx_unmap_q* %86, %struct.bnad_rx_unmap_q** %10, align 8
  %87 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %88 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %87, i32 0, i32 1
  %89 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %88, align 8
  %90 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %91 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %89, i64 %92
  store %struct.bnad_rx_unmap* %93, %struct.bnad_rx_unmap** %11, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @BNA_CQ_EF_MAC_ERROR, align 4
  %96 = load i32, i32* @BNA_CQ_EF_FCS_ERROR, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BNA_CQ_EF_TOO_LONG, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %94, %99
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %83
  %104 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %105 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @BNAD_RXBUF_IS_PAGE(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.bnad*, %struct.bnad** %4, align 8
  %111 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %112 = call i32 @bnad_rxq_cleanup_page(%struct.bnad* %110, %struct.bnad_rx_unmap* %111)
  br label %117

113:                                              ; preds = %103
  %114 = load %struct.bnad*, %struct.bnad** %4, align 8
  %115 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %116 = call i32 @bnad_rxq_cleanup_skb(%struct.bnad* %114, %struct.bnad_rx_unmap* %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %119 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %246

124:                                              ; preds = %83
  %125 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %126 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %125, i32 0, i32 4
  %127 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %126, align 8
  %128 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %129 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = call %struct.sk_buff* @bnad_cq_prepare_skb(%struct.bnad_rx_ctrl* %127, %struct.bnad_rx_unmap_q* %128, %struct.bnad_rx_unmap* %129, i32 %130, i32 %131)
  store %struct.sk_buff* %132, %struct.sk_buff** %12, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = icmp ne %struct.sk_buff* %133, null
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %124
  br label %268

140:                                              ; preds = %124
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @flags_cksum_prot_mask, align 4
  %143 = and i32 %141, %142
  store i32 %143, i32* %18, align 4
  %144 = load %struct.bnad*, %struct.bnad** %4, align 8
  %145 = getelementptr inbounds %struct.bnad, %struct.bnad* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %140
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @flags_tcp4, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* @flags_udp4, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* @flags_tcp6, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* @flags_udp6, align 4
  %163 = icmp eq i32 %161, %162
  br label %164

164:                                              ; preds = %160, %156, %152, %148
  %165 = phi i1 [ true, %156 ], [ true, %152 ], [ true, %148 ], [ %163, %160 ]
  br label %166

166:                                              ; preds = %164, %140
  %167 = phi i1 [ false, %140 ], [ %165, %164 ]
  %168 = zext i1 %167 to i32
  %169 = call i64 @likely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  br label %179

175:                                              ; preds = %166
  %176 = load i32, i32* @CHECKSUM_NONE, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %181 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %180, i32 0, i32 3
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %188 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %187, i32 0, i32 3
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %186
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @BNA_CQ_EF_VLAN, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %228

197:                                              ; preds = %179
  %198 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %199 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %198, i32 0, i32 4
  %200 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %199, align 8
  store %struct.bnad_rx_ctrl* %200, %struct.bnad_rx_ctrl** %19, align 8
  %201 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %202 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @BNAD_RXBUF_IS_PAGE(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %197
  %207 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %19, align 8
  %208 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %207, i32 0, i32 0
  %209 = load %struct.bnad*, %struct.bnad** %4, align 8
  %210 = getelementptr inbounds %struct.bnad, %struct.bnad* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %213 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ntohs(i32 %214)
  %216 = call i32 @vlan_gro_frags(i32* %208, i32 %211, i32 %215)
  br label %227

217:                                              ; preds = %197
  %218 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %219 = load %struct.bnad*, %struct.bnad** %4, align 8
  %220 = getelementptr inbounds %struct.bnad, %struct.bnad* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %223 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @ntohs(i32 %224)
  %226 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %218, i32 %221, i32 %225)
  br label %227

227:                                              ; preds = %217, %206
  br label %245

228:                                              ; preds = %179
  %229 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %230 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %229, i32 0, i32 4
  %231 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %230, align 8
  store %struct.bnad_rx_ctrl* %231, %struct.bnad_rx_ctrl** %20, align 8
  %232 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %233 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @BNAD_RXBUF_IS_PAGE(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %228
  %238 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %20, align 8
  %239 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %238, i32 0, i32 0
  %240 = call i32 @napi_gro_frags(i32* %239)
  br label %244

241:                                              ; preds = %228
  %242 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %243 = call i32 @netif_receive_skb(%struct.sk_buff* %242)
  br label %244

244:                                              ; preds = %241, %237
  br label %245

245:                                              ; preds = %244, %227
  br label %246

246:                                              ; preds = %245, %117
  %247 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %248 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %250 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %253 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @BNA_QE_INDX_INC(i64 %251, i32 %254)
  %256 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %257 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %260 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @BNA_QE_INDX_INC(i64 %258, i32 %261)
  %263 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %7, align 8
  %264 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %265 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %263, i64 %266
  store %struct.bna_cq_entry* %267, %struct.bna_cq_entry** %8, align 8
  br label %38

268:                                              ; preds = %139, %47
  %269 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %14, align 8
  %270 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %269, i32 0, i32 0
  %271 = call i32 @napi_gro_flush(i32* %270)
  %272 = load i32, i32* @BNAD_RXQ_STARTED, align 4
  %273 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %274 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %273, i32 0, i32 1
  %275 = load %struct.bna_rcb**, %struct.bna_rcb*** %274, align 8
  %276 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %275, i64 0
  %277 = load %struct.bna_rcb*, %struct.bna_rcb** %276, align 8
  %278 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %277, i32 0, i32 1
  %279 = call i32 @test_bit(i32 %272, i32* %278)
  %280 = call i64 @likely(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %268
  %283 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %284 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %15, align 4
  %287 = call i32 @bna_ib_ack_disable_irq(i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %282, %268
  %289 = load %struct.bnad*, %struct.bnad** %4, align 8
  %290 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %291 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %290, i32 0, i32 1
  %292 = load %struct.bna_rcb**, %struct.bna_rcb*** %291, align 8
  %293 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %292, i64 0
  %294 = load %struct.bna_rcb*, %struct.bna_rcb** %293, align 8
  %295 = call i32 @bnad_rxq_post(%struct.bnad* %289, %struct.bna_rcb* %294)
  %296 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %297 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %296, i32 0, i32 1
  %298 = load %struct.bna_rcb**, %struct.bna_rcb*** %297, align 8
  %299 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %298, i64 1
  %300 = load %struct.bna_rcb*, %struct.bna_rcb** %299, align 8
  %301 = icmp ne %struct.bna_rcb* %300, null
  br i1 %301, label %302, label %310

302:                                              ; preds = %288
  %303 = load %struct.bnad*, %struct.bnad** %4, align 8
  %304 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %305 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %304, i32 0, i32 1
  %306 = load %struct.bna_rcb**, %struct.bna_rcb*** %305, align 8
  %307 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %306, i64 1
  %308 = load %struct.bna_rcb*, %struct.bna_rcb** %307, align 8
  %309 = call i32 @bnad_rxq_post(%struct.bnad* %303, %struct.bna_rcb* %308)
  br label %310

310:                                              ; preds = %302, %288
  %311 = load i32, i32* %15, align 4
  ret i32 %311
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @BNA_UPDATE_PKT_CNT(%struct.bna_pkt_rate*, i32) #1

declare dso_local i64 @bna_is_small_rxq(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @BNAD_RXBUF_IS_PAGE(i32) #1

declare dso_local i32 @bnad_rxq_cleanup_page(%struct.bnad*, %struct.bnad_rx_unmap*) #1

declare dso_local i32 @bnad_rxq_cleanup_skb(%struct.bnad*, %struct.bnad_rx_unmap*) #1

declare dso_local %struct.sk_buff* @bnad_cq_prepare_skb(%struct.bnad_rx_ctrl*, %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlan_gro_frags(i32*, i32, i32) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @napi_gro_frags(i32*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i32) #1

declare dso_local i32 @napi_gro_flush(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bna_ib_ack_disable_irq(i32, i32) #1

declare dso_local i32 @bnad_rxq_post(%struct.bnad*, %struct.bna_rcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
