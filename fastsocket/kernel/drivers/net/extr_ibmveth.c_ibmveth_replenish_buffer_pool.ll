; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_replenish_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_replenish_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ibmveth_buff_pool = type { i64, i32, i32, i32*, i32, i8**, %struct.sk_buff**, i64 }
%struct.sk_buff = type { i64 }
%union.ibmveth_buf_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [35 x i8] c"replenish: unable to allocate skb\0A\00", align 1
@IBM_VETH_INVALID_MAP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IBMVETH_BUF_VALID = common dso_local global i32 0, align 4
@rx_flush = common dso_local global i64 0, align 8
@IBMVETH_BUFF_OH = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmveth_adapter*, %struct.ibmveth_buff_pool*)* @ibmveth_replenish_buffer_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_replenish_buffer_pool(%struct.ibmveth_adapter* %0, %struct.ibmveth_buff_pool* %1) #0 {
  %3 = alloca %struct.ibmveth_adapter*, align 8
  %4 = alloca %struct.ibmveth_buff_pool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.ibmveth_buf_desc, align 8
  %15 = alloca i32, align 4
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %3, align 8
  store %struct.ibmveth_buff_pool* %1, %struct.ibmveth_buff_pool** %4, align 8
  %16 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %17 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %20 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %19, i32 0, i32 4
  %21 = call i64 @atomic_read(i32* %20)
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %23 = call i32 (...) @mb()
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %193, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %196

28:                                               ; preds = %24
  %29 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %33 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_7__* %31, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @netdev_dbg(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %196

47:                                               ; preds = %28
  %48 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %49 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %52 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %56 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %60 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %65 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %68 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @IBM_VETH_INVALID_MAP, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %80 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %79, i32 0, i32 6
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %81, i64 %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %97 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %100 = call i8* @dma_map_single(i32* %92, i64 %95, i32 %98, i32 %99)
  store i8* %100, i8** %13, align 8
  %101 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @dma_mapping_error(i32* %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %66
  br label %202

109:                                              ; preds = %66
  %110 = load i32, i32* @IBM_VETH_INVALID_MAP, align 4
  %111 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %112 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %119 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %118, i32 0, i32 5
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %117, i8** %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %126 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %125, i32 0, i32 6
  %127 = load %struct.sk_buff**, %struct.sk_buff*** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %127, i64 %129
  store %struct.sk_buff* %124, %struct.sk_buff** %130, align 8
  %131 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %132 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = shl i32 %134, 32
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  store i32 %138, i32* %142, align 4
  %143 = load i32, i32* @IBMVETH_BUF_VALID, align 4
  %144 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %145 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %143, %146
  %148 = bitcast %union.ibmveth_buf_desc* %14 to %struct.TYPE_5__*
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = bitcast %union.ibmveth_buf_desc* %14 to %struct.TYPE_5__*
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i64, i64* @rx_flush, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %109
  %156 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %157 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IBMVETH_BUFF_OH, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @min(i32 %158, i64 %165)
  store i32 %166, i32* %15, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @ibmveth_flush_buffer(i64 %169, i32 %170)
  br label %172

172:                                              ; preds = %155, %109
  %173 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = bitcast %union.ibmveth_buf_desc* %14 to i32*
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @h_add_logical_lan_buffer(i32 %177, i32 %179)
  store i64 %180, i64* %12, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* @H_SUCCESS, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  br label %202

185:                                              ; preds = %172
  %186 = load i64, i64* %7, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %7, align 8
  %188 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %5, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %5, align 8
  br label %24

196:                                              ; preds = %38, %24
  %197 = call i32 (...) @mb()
  %198 = load i64, i64* %7, align 8
  %199 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %200 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %199, i32 0, i32 4
  %201 = call i32 @atomic_add(i64 %198, i32* %200)
  br label %270

202:                                              ; preds = %184, %108
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %205 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %203, i32* %209, align 4
  %210 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %211 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %210, i32 0, i32 6
  %212 = load %struct.sk_buff**, %struct.sk_buff*** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %212, i64 %214
  store %struct.sk_buff* null, %struct.sk_buff** %215, align 8
  %216 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %217 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %202
  %221 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %222 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = sub nsw i64 %223, 1
  %225 = trunc i64 %224 to i32
  %226 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %227 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  br label %233

228:                                              ; preds = %202
  %229 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %230 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %231, -1
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %228, %220
  %234 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %235 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i8*, i8** %13, align 8
  %239 = call i64 @dma_mapping_error(i32* %237, i8* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %258, label %241

241:                                              ; preds = %233
  %242 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %243 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %242, i32 0, i32 1
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %247 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %246, i32 0, i32 5
  %248 = load i8**, i8*** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %254 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %257 = call i32 @dma_unmap_single(i32* %245, i8* %252, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %241, %233
  %259 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %260 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %259)
  %261 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %262 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  %265 = call i32 (...) @mb()
  %266 = load i64, i64* %7, align 8
  %267 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %268 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %267, i32 0, i32 4
  %269 = call i32 @atomic_add(i64 %266, i32* %268)
  br label %270

270:                                              ; preds = %258, %196
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @ibmveth_flush_buffer(i64, i32) #1

declare dso_local i64 @h_add_logical_lan_buffer(i32, i32) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
