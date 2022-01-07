; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_ring**, i32, %struct.ixgbe_ring_feature*, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.ixgbe_ring**, i32, i32, %struct.ixgbe_q_vector** }
%struct.ixgbe_ring_feature = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ixgbe_ring = type { i32, i32, i32, %struct.ixgbe_q_vector*, %struct.TYPE_9__*, i32* }
%struct.ixgbe_q_vector = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.ixgbe_ring*, %struct.ixgbe_adapter*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ixgbe_poll = common dso_local global i32 0, align 4
@IXGBE_10K_ITR = common dso_local global i32 0, align 4
@IXGBE_20K_ITR = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@__IXGBE_RX_CSUM_UDP_ZERO_ERR = common dso_local global i32 0, align 4
@NETIF_F_FCOE_MTU = common dso_local global i32 0, align 4
@RING_F_FCOE = common dso_local global i64 0, align 8
@__IXGBE_RX_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32, i32, i32, i32, i32, i32)* @ixgbe_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ixgbe_q_vector*, align 8
  %17 = alloca %struct.ixgbe_ring*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %20, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 40, %26
  %28 = add i64 48, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %21, align 4
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %7
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @cpu_online(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @cpu_to_node(i32 %42)
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %7
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* %18, align 4
  %49 = call %struct.ixgbe_q_vector* @kzalloc_node(i32 %46, i32 %47, i32 %48)
  store %struct.ixgbe_q_vector* %49, %struct.ixgbe_q_vector** %16, align 8
  %50 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %51 = icmp ne %struct.ixgbe_q_vector* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ixgbe_q_vector* @kzalloc(i32 %53, i32 %54)
  store %struct.ixgbe_q_vector* %55, %struct.ixgbe_q_vector** %16, align 8
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %58 = icmp ne %struct.ixgbe_q_vector* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %244

62:                                               ; preds = %56
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %19, align 4
  %67 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %68 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %67, i32 0, i32 9
  %69 = call i32 @cpumask_set_cpu(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %73 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %75 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %74, i32 0, i32 6
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %78 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %77, i32 0, i32 8
  %79 = load i32, i32* @ixgbe_poll, align 4
  %80 = call i32 @netif_napi_add(%struct.TYPE_9__* %76, i32* %78, i32 %79, i32 64)
  %81 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 12
  %84 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %84, i64 %86
  store %struct.ixgbe_q_vector* %81, %struct.ixgbe_q_vector** %87, align 8
  %88 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %89 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %90 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %89, i32 0, i32 7
  store %struct.ixgbe_adapter* %88, %struct.ixgbe_adapter** %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %93 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %98 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %101 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %100, i32 0, i32 6
  %102 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %101, align 8
  store %struct.ixgbe_ring* %102, %struct.ixgbe_ring** %17, align 8
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %70
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %105
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @IXGBE_10K_ITR, align 4
  %115 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %116 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %123

117:                                              ; preds = %108
  %118 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %119 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %122 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %113
  br label %140

124:                                              ; preds = %105, %70
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %126 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @IXGBE_20K_ITR, align 4
  %131 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %132 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  br label %139

133:                                              ; preds = %124
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %135 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %138 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %144, %140
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %185

144:                                              ; preds = %141
  %145 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %146 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %145, i32 0, i32 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %150 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %149, i32 0, i32 5
  store i32* %148, i32** %150, align 8
  %151 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %152 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %151, i32 0, i32 6
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %155 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %154, i32 0, i32 4
  store %struct.TYPE_9__* %153, %struct.TYPE_9__** %155, align 8
  %156 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %157 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %158 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %157, i32 0, i32 3
  store %struct.ixgbe_q_vector* %156, %struct.ixgbe_q_vector** %158, align 8
  %159 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %160 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %161 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %160, i32 0, i32 5
  %162 = call i32 @ixgbe_add_ring(%struct.ixgbe_ring* %159, %struct.TYPE_10__* %161)
  %163 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %164 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %167 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %170 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %172 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %173 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %172, i32 0, i32 9
  %174 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %174, i64 %176
  store %struct.ixgbe_ring* %171, %struct.ixgbe_ring** %177, align 8
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %13, align 4
  %183 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %184 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %183, i32 1
  store %struct.ixgbe_ring* %184, %struct.ixgbe_ring** %17, align 8
  br label %141

185:                                              ; preds = %141
  br label %186

186:                                              ; preds = %220, %185
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %243

189:                                              ; preds = %186
  %190 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %191 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %190, i32 0, i32 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %195 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %194, i32 0, i32 5
  store i32* %193, i32** %195, align 8
  %196 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %197 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %196, i32 0, i32 6
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %200 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %199, i32 0, i32 4
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %200, align 8
  %201 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %202 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %203 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %202, i32 0, i32 3
  store %struct.ixgbe_q_vector* %201, %struct.ixgbe_q_vector** %203, align 8
  %204 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %205 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  %206 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %205, i32 0, i32 4
  %207 = call i32 @ixgbe_add_ring(%struct.ixgbe_ring* %204, %struct.TYPE_10__* %206)
  %208 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %209 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %189
  %216 = load i32, i32* @__IXGBE_RX_CSUM_UDP_ZERO_ERR, align 4
  %217 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %218 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %217, i32 0, i32 2
  %219 = call i32 @set_bit(i32 %216, i32* %218)
  br label %220

220:                                              ; preds = %215, %189
  %221 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %222 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %225 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %228 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %230 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %231 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %230, i32 0, i32 3
  %232 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %232, i64 %234
  store %struct.ixgbe_ring* %229, %struct.ixgbe_ring** %235, align 8
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %15, align 4
  %241 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, align 8
  %242 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %241, i32 1
  store %struct.ixgbe_ring* %242, %struct.ixgbe_ring** %17, align 8
  br label %186

243:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %243, %59
  %245 = load i32, i32* %8, align 4
  ret i32 %245
}

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.ixgbe_q_vector* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.ixgbe_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @netif_napi_add(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ixgbe_add_ring(%struct.ixgbe_ring*, %struct.TYPE_10__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
