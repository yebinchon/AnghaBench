; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.igb_ring**, i32, %struct.TYPE_7__, i32, %struct.TYPE_5__*, %struct.igb_ring**, i32, i32, %struct.igb_q_vector** }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.igb_ring = type { i32, i32, i32, %struct.igb_q_vector*, i32, i32* }
%struct.igb_q_vector = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.igb_ring*, i64, %struct.igb_adapter*, i32 }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@igb_poll = common dso_local global i32 0, align 4
@IGB_START_ITR = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@IGB_RING_FLAG_TX_CTX_IDX = common dso_local global i32 0, align 4
@IGB_RING_FLAG_RX_CSUM = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@IGB_RING_FLAG_RX_SCTP_CSUM = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@IGB_RING_FLAG_RX_LB_VLAN_BSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32, i32, i32, i32, i32, i32)* @igb_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_alloc_q_vector(%struct.igb_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.igb_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.igb_q_vector*, align 8
  %17 = alloca %struct.igb_ring*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %239

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 40, %33
  %35 = add i64 48, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.igb_q_vector* @kzalloc(i32 %37, i32 %38)
  store %struct.igb_q_vector* %39, %struct.igb_q_vector** %16, align 8
  %40 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %41 = icmp ne %struct.igb_q_vector* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %239

45:                                               ; preds = %28
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %50 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %49, i32 0, i32 6
  %51 = load i32, i32* @igb_poll, align 4
  %52 = call i32 @netif_napi_add(i32 %48, i32* %50, i32 %51, i32 64)
  %53 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %55 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %54, i32 0, i32 10
  %56 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %56, i64 %58
  store %struct.igb_q_vector* %53, %struct.igb_q_vector** %59, align 8
  %60 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %61 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %62 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %61, i32 0, i32 5
  store %struct.igb_adapter* %60, %struct.igb_adapter** %62, align 8
  %63 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %64 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %67 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %70 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @E1000_EITR(i32 0)
  %74 = add nsw i64 %72, %73
  %75 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %76 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @IGB_START_ITR, align 4
  %78 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %79 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %81 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %80, i32 0, i32 3
  %82 = load %struct.igb_ring*, %struct.igb_ring** %81, align 8
  store %struct.igb_ring* %82, %struct.igb_ring** %17, align 8
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %45
  %86 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %87 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %95, label %101

95:                                               ; preds = %90, %85
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %100 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %95, %90
  br label %119

102:                                              ; preds = %45
  %103 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %104 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %109 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 3
  br i1 %111, label %112, label %118

112:                                              ; preds = %107, %102
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %114 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %117 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %112, %107
  br label %119

119:                                              ; preds = %118, %101
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %171

122:                                              ; preds = %119
  %123 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %124 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %123, i32 0, i32 6
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %128 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %127, i32 0, i32 5
  store i32* %126, i32** %128, align 8
  %129 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %130 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %133 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %135 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %136 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %135, i32 0, i32 3
  store %struct.igb_q_vector* %134, %struct.igb_q_vector** %136, align 8
  %137 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %138 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %139 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %138, i32 0, i32 2
  %140 = call i32 @igb_add_ring(%struct.igb_ring* %137, %struct.TYPE_8__* %139)
  %141 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %142 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @e1000_82575, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %122
  %149 = load i32, i32* @IGB_RING_FLAG_TX_CTX_IDX, align 4
  %150 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %151 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %150, i32 0, i32 2
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %148, %122
  %154 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %155 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %158 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %161 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %163 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %164 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %163, i32 0, i32 7
  %165 = load %struct.igb_ring**, %struct.igb_ring*** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %165, i64 %167
  store %struct.igb_ring* %162, %struct.igb_ring** %168, align 8
  %169 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %170 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %169, i32 1
  store %struct.igb_ring* %170, %struct.igb_ring** %17, align 8
  br label %171

171:                                              ; preds = %153, %119
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %238

174:                                              ; preds = %171
  %175 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %176 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %175, i32 0, i32 6
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %180 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %179, i32 0, i32 5
  store i32* %178, i32** %180, align 8
  %181 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %182 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %185 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %187 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %188 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %187, i32 0, i32 3
  store %struct.igb_q_vector* %186, %struct.igb_q_vector** %188, align 8
  %189 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %190 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %191 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %190, i32 0, i32 1
  %192 = call i32 @igb_add_ring(%struct.igb_ring* %189, %struct.TYPE_8__* %191)
  %193 = load i32, i32* @IGB_RING_FLAG_RX_CSUM, align 4
  %194 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %195 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %194, i32 0, i32 2
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  %197 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %198 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @e1000_82576, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %174
  %205 = load i32, i32* @IGB_RING_FLAG_RX_SCTP_CSUM, align 4
  %206 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %207 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %206, i32 0, i32 2
  %208 = call i32 @set_bit(i32 %205, i32* %207)
  br label %209

209:                                              ; preds = %204, %174
  %210 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %211 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @e1000_i350, align 8
  %216 = icmp sge i64 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %209
  %218 = load i32, i32* @IGB_RING_FLAG_RX_LB_VLAN_BSWAP, align 4
  %219 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %220 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %219, i32 0, i32 2
  %221 = call i32 @set_bit(i32 %218, i32* %220)
  br label %222

222:                                              ; preds = %217, %209
  %223 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %224 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %227 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %15, align 4
  %229 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %230 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %232 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %233 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %232, i32 0, i32 2
  %234 = load %struct.igb_ring**, %struct.igb_ring*** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %234, i64 %236
  store %struct.igb_ring* %231, %struct.igb_ring** %237, align 8
  br label %238

238:                                              ; preds = %222, %171
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %238, %42, %25
  %240 = load i32, i32* %8, align 4
  ret i32 %240
}

declare dso_local %struct.igb_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i64 @E1000_EITR(i32) #1

declare dso_local i32 @igb_add_ring(%struct.igb_ring*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
