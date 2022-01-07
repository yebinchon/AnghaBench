; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_alloc_qset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_alloc_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.netdev_queue*, %struct.net_device*, %struct.adapter*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.qset_params = type { i32, i32, i32, i32*, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@sge_timer_tx = common dso_local global i32 0, align 4
@sge_timer_rx = common dso_local global i32 0, align 4
@TXQ_CTRL = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i64 0, align 8
@restart_offloadq = common dso_local global i32 0, align 4
@restart_ctrlq = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@TXQ_ETH = common dso_local global i64 0, align 8
@SGE_RX_SM_BUF_SIZE = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@FL0_PG_CHUNK_SIZE = common dso_local global i64 0, align 8
@FL1_PG_CHUNK_SIZE = common dso_local global i64 0, align 8
@FL0_PG_ORDER = common dso_local global i32 0, align 4
@FL1_PG_ORDER = common dso_local global i32 0, align 4
@FL0_PG_ALLOC_SIZE = common dso_local global i32 0, align 4
@FL1_PG_ALLOC_SIZE = common dso_local global i32 0, align 4
@SGE_PG_RSVD = common dso_local global i32 0, align 4
@SGE_RXQ_PER_SET = common dso_local global i32 0, align 4
@USE_GTS = common dso_local global i32 0, align 4
@SGE_CNTXT_ETH = common dso_local global i32 0, align 4
@SGE_CNTXT_OFLD = common dso_local global i32 0, align 4
@SGE_CNTXT_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"free list queue 0 initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"free list queue 0 enabled with %d credits\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"free list queue 1 enabled with %d credits\0A\00", align 1
@A_SG_GTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_alloc_qset(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, %struct.qset_params* %4, i32 %5, %struct.net_device* %6, %struct.netdev_queue* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qset_params*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.netdev_queue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sge_qset*, align 8
  %22 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.qset_params* %4, %struct.qset_params** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.net_device* %6, %struct.net_device** %16, align 8
  store %struct.netdev_queue* %7, %struct.netdev_queue** %17, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %20, align 4
  %25 = load %struct.adapter*, %struct.adapter** %10, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.sge_qset*, %struct.sge_qset** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %28, i64 %30
  store %struct.sge_qset* %31, %struct.sge_qset** %21, align 8
  %32 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @init_qset_cntxt(%struct.sge_qset* %32, i32 %33)
  %35 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %36 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %35, i32 0, i32 7
  %37 = load i32, i32* @sge_timer_tx, align 4
  %38 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %39 = ptrtoint %struct.sge_qset* %38 to i64
  %40 = call i32 @setup_timer(i32* %36, i32 %37, i64 %39)
  %41 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %42 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %41, i32 0, i32 6
  %43 = load i32, i32* @sge_timer_rx, align 4
  %44 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %45 = ptrtoint %struct.sge_qset* %44 to i64
  %46 = call i32 @setup_timer(i32* %42, i32 %43, i64 %45)
  %47 = load %struct.adapter*, %struct.adapter** %10, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %51 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %54 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %59 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 9
  %63 = call i8* @alloc_ring(i32 %49, i32 %52, i32 4, i64 4, i32* %57, i32* %62)
  %64 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %65 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 8
  store i8* %63, i8** %68, align 8
  %69 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %70 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %8
  br label %674

77:                                               ; preds = %8
  %78 = load %struct.adapter*, %struct.adapter** %10, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %82 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %85 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %90 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 9
  %94 = call i8* @alloc_ring(i32 %80, i32 %83, i32 4, i64 4, i32* %88, i32* %93)
  %95 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %96 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 8
  store i8* %94, i8** %99, align 8
  %100 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %101 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 8
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %77
  br label %674

108:                                              ; preds = %77
  %109 = load %struct.adapter*, %struct.adapter** %10, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %113 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %116 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = call i8* @alloc_ring(i32 %111, i32 %114, i32 4, i64 0, i32* %117, i32* null)
  %119 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %120 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 7
  store i8* %118, i8** %121, align 8
  %122 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %123 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 7
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %108
  br label %674

128:                                              ; preds = %108
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %220, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %223

133:                                              ; preds = %129
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* @TXQ_CTRL, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i64 0, i64 4
  store i64 %138, i64* %22, align 8
  %139 = load %struct.adapter*, %struct.adapter** %10, align 8
  %140 = getelementptr inbounds %struct.adapter, %struct.adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %143 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %22, align 8
  %150 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %151 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %150, i32 0, i32 5
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %158 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %157, i32 0, i32 5
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 10
  %164 = call i8* @alloc_ring(i32 %141, i32 %148, i32 4, i64 %149, i32* %156, i32* %163)
  %165 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %166 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %165, i32 0, i32 5
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 9
  store i8* %164, i8** %171, align 8
  %172 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %173 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %172, i32 0, i32 5
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 9
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %133
  br label %674

182:                                              ; preds = %133
  %183 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %184 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %183, i32 0, i32 5
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %191 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %198 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %197, i32 0, i32 5
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i32 %196, i32* %203, align 4
  %204 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %205 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %204, i32 0, i32 5
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 8
  %211 = call i32 @spin_lock_init(i32* %210)
  %212 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %213 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %212, i32 0, i32 5
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = load i32, i32* %18, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 7
  %219 = call i32 @skb_queue_head_init(i32* %218)
  br label %220

220:                                              ; preds = %182
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %18, align 4
  br label %129

223:                                              ; preds = %129
  %224 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %225 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %224, i32 0, i32 5
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = load i64, i64* @TXQ_OFLD, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 6
  %230 = load i32, i32* @restart_offloadq, align 4
  %231 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %232 = ptrtoint %struct.sge_qset* %231 to i64
  %233 = call i32 @tasklet_init(i32* %229, i32 %230, i64 %232)
  %234 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %235 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %234, i32 0, i32 5
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = load i32, i32* @TXQ_CTRL, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 6
  %241 = load i32, i32* @restart_ctrlq, align 4
  %242 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %243 = ptrtoint %struct.sge_qset* %242 to i64
  %244 = call i32 @tasklet_init(i32* %240, i32 %241, i64 %243)
  %245 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %246 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %245, i32 0, i32 1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i64 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %251 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %250, i32 0, i32 1
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %256 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %259 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %258, i32 0, i32 1
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  store i32 %257, i32* %262, align 4
  %263 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %264 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %267 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %266, i32 0, i32 1
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i64 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  store i32 %265, i32* %270, align 4
  %271 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %272 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  store i32 1, i32* %273, align 8
  %274 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %275 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %278 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 4
  %280 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %281 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 6
  %283 = call i32 @spin_lock_init(i32* %282)
  %284 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %285 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 5
  %287 = call i32 @skb_queue_head_init(i32* %286)
  %288 = load i32, i32* %12, align 4
  %289 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %290 = add nsw i64 %289, 1
  %291 = call i64 @sgl_len(i64 %290)
  %292 = add nsw i64 %291, 3
  %293 = call i32 @flits_to_desc(i64 %292)
  %294 = mul nsw i32 %288, %293
  %295 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %296 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %295, i32 0, i32 5
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i64, i64* @TXQ_ETH, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 2
  store i32 %294, i32* %300, align 8
  %301 = load i32, i32* @SGE_RX_SM_BUF_SIZE, align 4
  %302 = sext i32 %301 to i64
  %303 = add i64 %302, 4
  %304 = trunc i64 %303 to i32
  %305 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %306 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %305, i32 0, i32 1
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 2
  store i32 %304, i32* %309, align 8
  %310 = load %struct.adapter*, %struct.adapter** %10, align 8
  %311 = call i64 @is_offload(%struct.adapter* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %223
  %314 = call i32 @SKB_DATA_ALIGN(i32 4)
  %315 = sub nsw i32 16384, %314
  %316 = sext i32 %315 to i64
  br label %322

317:                                              ; preds = %223
  %318 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %319 = add nsw i32 %318, 2
  %320 = sext i32 %319 to i64
  %321 = add i64 %320, 4
  br label %322

322:                                              ; preds = %317, %313
  %323 = phi i64 [ %316, %313 ], [ %321, %317 ]
  %324 = trunc i64 %323 to i32
  %325 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %326 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %325, i32 0, i32 1
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i64 1
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  store i32 %324, i32* %329, align 8
  %330 = load i64, i64* @FL0_PG_CHUNK_SIZE, align 8
  %331 = icmp sgt i64 %330, 0
  %332 = zext i1 %331 to i32
  %333 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %334 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %333, i32 0, i32 1
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 3
  store i32 %332, i32* %337, align 4
  %338 = load i64, i64* @FL1_PG_CHUNK_SIZE, align 8
  %339 = icmp sgt i64 %338, 0
  %340 = zext i1 %339 to i32
  %341 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %342 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %341, i32 0, i32 1
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i64 1
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 3
  store i32 %340, i32* %345, align 4
  %346 = load i32, i32* @FL0_PG_ORDER, align 4
  %347 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %348 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %347, i32 0, i32 1
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i64 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 7
  store i32 %346, i32* %351, align 4
  %352 = load i32, i32* @FL1_PG_ORDER, align 4
  %353 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %354 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %353, i32 0, i32 1
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i64 1
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 7
  store i32 %352, i32* %357, align 4
  %358 = load i32, i32* @FL0_PG_ALLOC_SIZE, align 4
  %359 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %360 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %359, i32 0, i32 1
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 6
  store i32 %358, i32* %363, align 8
  %364 = load i32, i32* @FL1_PG_ALLOC_SIZE, align 4
  %365 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %366 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %365, i32 0, i32 1
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 6
  store i32 %364, i32* %369, align 8
  %370 = load %struct.adapter*, %struct.adapter** %10, align 8
  %371 = getelementptr inbounds %struct.adapter, %struct.adapter* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = call i32 @spin_lock_irq(i32* %372)
  %374 = load %struct.adapter*, %struct.adapter** %10, align 8
  %375 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %376 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %13, align 4
  %380 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %381 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %385 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %389 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %388, i32 0, i32 1
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i64 0
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @SGE_PG_RSVD, align 4
  %395 = sub nsw i32 %393, %394
  %396 = call i32 @t3_sge_init_rspcntxt(%struct.adapter* %374, i32 %378, i32 %379, i32 %383, i32 %387, i32 %395, i32 1, i32 0)
  store i32 %396, i32* %20, align 4
  %397 = load i32, i32* %20, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %322
  br label %669

400:                                              ; preds = %322
  store i32 0, i32* %18, align 4
  br label %401

401:                                              ; preds = %449, %400
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* @SGE_RXQ_PER_SET, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %452

405:                                              ; preds = %401
  %406 = load %struct.adapter*, %struct.adapter** %10, align 8
  %407 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %408 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %407, i32 0, i32 1
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %408, align 8
  %410 = load i32, i32* %18, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %416 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %415, i32 0, i32 1
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %416, align 8
  %418 = load i32, i32* %18, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %424 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %423, i32 0, i32 1
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %424, align 8
  %426 = load i32, i32* %18, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %432 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %431, i32 0, i32 1
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** %432, align 8
  %434 = load i32, i32* %18, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @SGE_PG_RSVD, align 4
  %440 = sub nsw i32 %438, %439
  %441 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %442 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @t3_sge_init_flcntxt(%struct.adapter* %406, i32 %414, i32 0, i32 %422, i32 %430, i32 %440, i32 %443, i32 1, i32 0)
  store i32 %444, i32* %20, align 4
  %445 = load i32, i32* %20, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %405
  br label %669

448:                                              ; preds = %405
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %18, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %18, align 4
  br label %401

452:                                              ; preds = %401
  %453 = load %struct.adapter*, %struct.adapter** %10, align 8
  %454 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %455 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %454, i32 0, i32 5
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %455, align 8
  %457 = load i64, i64* @TXQ_ETH, align 8
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i32 0, i32 5
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @USE_GTS, align 4
  %462 = load i32, i32* @SGE_CNTXT_ETH, align 4
  %463 = load i32, i32* %11, align 4
  %464 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %465 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %464, i32 0, i32 5
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** %465, align 8
  %467 = load i64, i64* @TXQ_ETH, align 8
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %472 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %471, i32 0, i32 5
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %472, align 8
  %474 = load i64, i64* @TXQ_ETH, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %479 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %478, i32 0, i32 5
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %479, align 8
  %481 = load i64, i64* @TXQ_ETH, align 8
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %453, i32 %460, i32 %461, i32 %462, i32 %463, i32 %470, i32 %477, i32 %484, i32 1, i32 0)
  store i32 %485, i32* %20, align 4
  %486 = load i32, i32* %20, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %452
  br label %669

489:                                              ; preds = %452
  %490 = load i32, i32* %15, align 4
  %491 = icmp sgt i32 %490, 1
  br i1 %491, label %492, label %523

492:                                              ; preds = %489
  %493 = load %struct.adapter*, %struct.adapter** %10, align 8
  %494 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %495 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %494, i32 0, i32 5
  %496 = load %struct.TYPE_5__*, %struct.TYPE_5__** %495, align 8
  %497 = load i64, i64* @TXQ_OFLD, align 8
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i32 0, i32 5
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @USE_GTS, align 4
  %502 = load i32, i32* @SGE_CNTXT_OFLD, align 4
  %503 = load i32, i32* %11, align 4
  %504 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %505 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %504, i32 0, i32 5
  %506 = load %struct.TYPE_5__*, %struct.TYPE_5__** %505, align 8
  %507 = load i64, i64* @TXQ_OFLD, align 8
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %512 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %511, i32 0, i32 5
  %513 = load %struct.TYPE_5__*, %struct.TYPE_5__** %512, align 8
  %514 = load i64, i64* @TXQ_OFLD, align 8
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %493, i32 %500, i32 %501, i32 %502, i32 %503, i32 %510, i32 %517, i32 0, i32 1, i32 0)
  store i32 %518, i32* %20, align 4
  %519 = load i32, i32* %20, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %492
  br label %669

522:                                              ; preds = %492
  br label %523

523:                                              ; preds = %522, %489
  %524 = load i32, i32* %15, align 4
  %525 = icmp sgt i32 %524, 2
  br i1 %525, label %526, label %567

526:                                              ; preds = %523
  %527 = load %struct.adapter*, %struct.adapter** %10, align 8
  %528 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %529 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %528, i32 0, i32 5
  %530 = load %struct.TYPE_5__*, %struct.TYPE_5__** %529, align 8
  %531 = load i32, i32* @TXQ_CTRL, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 5
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @SGE_CNTXT_CTRL, align 4
  %537 = load i32, i32* %11, align 4
  %538 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %539 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %538, i32 0, i32 5
  %540 = load %struct.TYPE_5__*, %struct.TYPE_5__** %539, align 8
  %541 = load i32, i32* @TXQ_CTRL, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %543, i32 0, i32 4
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %547 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %546, i32 0, i32 5
  %548 = load %struct.TYPE_5__*, %struct.TYPE_5__** %547, align 8
  %549 = load i32, i32* @TXQ_CTRL, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %555 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %554, i32 0, i32 5
  %556 = load %struct.TYPE_5__*, %struct.TYPE_5__** %555, align 8
  %557 = load i32, i32* @TXQ_CTRL, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %559, i32 0, i32 3
  %561 = load i32, i32* %560, align 4
  %562 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %527, i32 %535, i32 0, i32 %536, i32 %537, i32 %545, i32 %553, i32 %561, i32 1, i32 0)
  store i32 %562, i32* %20, align 4
  %563 = load i32, i32* %20, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %526
  br label %669

566:                                              ; preds = %526
  br label %567

567:                                              ; preds = %566, %523
  %568 = load %struct.adapter*, %struct.adapter** %10, align 8
  %569 = getelementptr inbounds %struct.adapter, %struct.adapter* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %569, i32 0, i32 0
  %571 = call i32 @spin_unlock_irq(i32* %570)
  %572 = load %struct.adapter*, %struct.adapter** %10, align 8
  %573 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %574 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %573, i32 0, i32 4
  store %struct.adapter* %572, %struct.adapter** %574, align 8
  %575 = load %struct.net_device*, %struct.net_device** %16, align 8
  %576 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %577 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %576, i32 0, i32 3
  store %struct.net_device* %575, %struct.net_device** %577, align 8
  %578 = load %struct.netdev_queue*, %struct.netdev_queue** %17, align 8
  %579 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %580 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %579, i32 0, i32 2
  store %struct.netdev_queue* %578, %struct.netdev_queue** %580, align 8
  %581 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %582 = load %struct.qset_params*, %struct.qset_params** %14, align 8
  %583 = call i32 @t3_update_qset_coalesce(%struct.sge_qset* %581, %struct.qset_params* %582)
  %584 = load %struct.adapter*, %struct.adapter** %10, align 8
  %585 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %586 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %585, i32 0, i32 1
  %587 = load %struct.TYPE_8__*, %struct.TYPE_8__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %587, i64 0
  %589 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %590 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %589, i32 0, i32 1
  %591 = load %struct.TYPE_8__*, %struct.TYPE_8__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i64 0
  %593 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %592, i32 0, i32 1
  %594 = load i32, i32* %593, align 4
  %595 = load i32, i32* @GFP_KERNEL, align 4
  %596 = load i32, i32* @__GFP_COMP, align 4
  %597 = or i32 %595, %596
  %598 = call i32 @refill_fl(%struct.adapter* %584, %struct.TYPE_8__* %588, i32 %594, i32 %597)
  store i32 %598, i32* %19, align 4
  %599 = load i32, i32* %19, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %567
  %602 = load %struct.adapter*, %struct.adapter** %10, align 8
  %603 = call i32 @CH_ALERT(%struct.adapter* %602, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %674

604:                                              ; preds = %567
  %605 = load i32, i32* %19, align 4
  %606 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %607 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %606, i32 0, i32 1
  %608 = load %struct.TYPE_8__*, %struct.TYPE_8__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %608, i64 0
  %610 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = icmp slt i32 %605, %611
  br i1 %612, label %613, label %617

613:                                              ; preds = %604
  %614 = load %struct.adapter*, %struct.adapter** %10, align 8
  %615 = load i32, i32* %19, align 4
  %616 = call i32 @CH_WARN(%struct.adapter* %614, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %615)
  br label %617

617:                                              ; preds = %613, %604
  %618 = load %struct.adapter*, %struct.adapter** %10, align 8
  %619 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %620 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %619, i32 0, i32 1
  %621 = load %struct.TYPE_8__*, %struct.TYPE_8__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %621, i64 1
  %623 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %624 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %623, i32 0, i32 1
  %625 = load %struct.TYPE_8__*, %struct.TYPE_8__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %625, i64 1
  %627 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* @GFP_KERNEL, align 4
  %630 = load i32, i32* @__GFP_COMP, align 4
  %631 = or i32 %629, %630
  %632 = call i32 @refill_fl(%struct.adapter* %618, %struct.TYPE_8__* %622, i32 %628, i32 %631)
  store i32 %632, i32* %19, align 4
  %633 = load i32, i32* %19, align 4
  %634 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %635 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %634, i32 0, i32 1
  %636 = load %struct.TYPE_8__*, %struct.TYPE_8__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %636, i64 1
  %638 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = icmp slt i32 %633, %639
  br i1 %640, label %641, label %645

641:                                              ; preds = %617
  %642 = load %struct.adapter*, %struct.adapter** %10, align 8
  %643 = load i32, i32* %19, align 4
  %644 = call i32 @CH_WARN(%struct.adapter* %642, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %643)
  br label %645

645:                                              ; preds = %641, %617
  %646 = load %struct.adapter*, %struct.adapter** %10, align 8
  %647 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %648 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %647, i32 0, i32 0
  %649 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %650 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 4
  %653 = sub nsw i32 %652, 1
  %654 = call i32 @refill_rspq(%struct.adapter* %646, %struct.TYPE_7__* %648, i32 %653)
  %655 = load %struct.adapter*, %struct.adapter** %10, align 8
  %656 = load i32, i32* @A_SG_GTS, align 4
  %657 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %658 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %657, i32 0, i32 0
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @V_RSPQ(i32 %660)
  %662 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %663 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %663, i32 0, i32 2
  %665 = load i32, i32* %664, align 8
  %666 = call i32 @V_NEWTIMER(i32 %665)
  %667 = or i32 %661, %666
  %668 = call i32 @t3_write_reg(%struct.adapter* %655, i32 %656, i32 %667)
  store i32 0, i32* %9, align 4
  br label %679

669:                                              ; preds = %565, %521, %488, %447, %399
  %670 = load %struct.adapter*, %struct.adapter** %10, align 8
  %671 = getelementptr inbounds %struct.adapter, %struct.adapter* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %671, i32 0, i32 0
  %673 = call i32 @spin_unlock_irq(i32* %672)
  br label %674

674:                                              ; preds = %669, %601, %181, %127, %107, %76
  %675 = load %struct.adapter*, %struct.adapter** %10, align 8
  %676 = load %struct.sge_qset*, %struct.sge_qset** %21, align 8
  %677 = call i32 @t3_free_qset(%struct.adapter* %675, %struct.sge_qset* %676)
  %678 = load i32, i32* %20, align 4
  store i32 %678, i32* %9, align 4
  br label %679

679:                                              ; preds = %674, %645
  %680 = load i32, i32* %9, align 4
  ret i32 %680
}

declare dso_local i32 @init_qset_cntxt(%struct.sge_qset*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i8* @alloc_ring(i32, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @flits_to_desc(i64) #1

declare dso_local i64 @sgl_len(i64) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @t3_sge_init_rspcntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t3_sge_init_flcntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t3_sge_init_ecntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @t3_update_qset_coalesce(%struct.sge_qset*, %struct.qset_params*) #1

declare dso_local i32 @refill_fl(%struct.adapter*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32) #1

declare dso_local i32 @refill_rspq(%struct.adapter*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @t3_free_qset(%struct.adapter*, %struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
