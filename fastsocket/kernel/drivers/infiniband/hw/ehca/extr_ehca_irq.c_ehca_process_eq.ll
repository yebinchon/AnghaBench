; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_ehca_process_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_ehca_process_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.ehca_eq, i32, i32 }
%struct.ehca_eq = type { i32, %struct.ehca_eqe_cache_entry*, i32, i32, i32 }
%struct.ehca_eqe_cache_entry = type { %struct.TYPE_2__*, %struct.ehca_cq* }
%struct.TYPE_2__ = type { i64 }
%struct.ehca_cq = type { i32, i32 }
%struct.ehca_eqe = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"int_state=%x query_cnt=%x\00", align 1
@EQE_COMPLETION_EVENT = common dso_local global i32 0, align 4
@EQE_CQ_TOKEN = common dso_local global i32 0, align 4
@ehca_cq_idr_lock = common dso_local global i32 0, align 4
@ehca_cq_idr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid eqe for non-existing cq token=%x\00", align 1
@EHCA_EQE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No eqe found for irq event\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"bad return code EOI -rc = %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"deadman found %x eqe\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"too many eqes for one irq event\00", align 1
@ehca_scaling_code = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Got non completion event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ehca_process_eq(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_eq*, align 8
  %6 = alloca %struct.ehca_eqe_cache_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ehca_cq*, align 8
  %17 = alloca %struct.ehca_eqe*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %19 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %18, i32 0, i32 0
  store %struct.ehca_eq* %19, %struct.ehca_eq** %5, align 8
  %20 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %21 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %20, i32 0, i32 1
  %22 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %21, align 8
  store %struct.ehca_eqe_cache_entry* %22, %struct.ehca_eqe_cache_entry** %6, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %24 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %2
  store i32 100, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %31 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %34 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hipz_h_query_int_state(i32 %32, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = call i32 (...) @iosync()
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 100
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %29, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 100
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %56 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %55, i32 0, i32 1
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %2
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %145, %61
  %63 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %64 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %65 = call i8* @ehca_poll_eq(%struct.ehca_shca* %63, %struct.ehca_eq* %64)
  %66 = bitcast i8* %65 to %struct.TYPE_2__*
  %67 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %67, i64 %69
  %71 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %70, i32 0, i32 0
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %71, align 8
  %72 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  br label %149

80:                                               ; preds = %62
  %81 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %81, i64 %83
  %85 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %7, align 8
  %89 = load i32, i32* @EQE_COMPLETION_EVENT, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @EHCA_BMASK_GET(i32 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %80
  %94 = load i32, i32* @EQE_CQ_TOKEN, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @EHCA_BMASK_GET(i32 %94, i64 %95)
  store i64 %96, i64* %15, align 8
  %97 = call i32 @read_lock(i32* @ehca_cq_idr_lock)
  %98 = load i64, i64* %15, align 8
  %99 = call %struct.ehca_cq* @idr_find(i32* @ehca_cq_idr, i64 %98)
  %100 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %100, i64 %102
  %104 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %103, i32 0, i32 1
  store %struct.ehca_cq* %99, %struct.ehca_cq** %104, align 8
  %105 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %105, i64 %107
  %109 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %108, i32 0, i32 1
  %110 = load %struct.ehca_cq*, %struct.ehca_cq** %109, align 8
  %111 = icmp ne %struct.ehca_cq* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %93
  %113 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %113, i64 %115
  %117 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %116, i32 0, i32 1
  %118 = load %struct.ehca_cq*, %struct.ehca_cq** %117, align 8
  %119 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %118, i32 0, i32 1
  %120 = call i32 @atomic_inc(i32* %119)
  br label %121

121:                                              ; preds = %112, %93
  %122 = call i32 @read_unlock(i32* @ehca_cq_idr_lock)
  %123 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %123, i64 %125
  %127 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %126, i32 0, i32 1
  %128 = load %struct.ehca_cq*, %struct.ehca_cq** %127, align 8
  %129 = icmp ne %struct.ehca_cq* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %121
  %131 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %132 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %131, i32 0, i32 1
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @ehca_err(i32* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %133)
  br label %145

135:                                              ; preds = %121
  br label %142

136:                                              ; preds = %80
  %137 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %137, i64 %139
  %141 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %140, i32 0, i32 1
  store %struct.ehca_cq* null, %struct.ehca_cq** %141, align 8
  br label %142

142:                                              ; preds = %136, %135
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %142, %130
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @EHCA_EQE_CACHE_SIZE, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %62, label %149

149:                                              ; preds = %145, %79
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %157 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %156, i32 0, i32 1
  %158 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155, %152
  br label %324

160:                                              ; preds = %149
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %160
  %164 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %165 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @hipz_h_eoi(i32 %166)
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @H_SUCCESS, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %173 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %172, i32 0, i32 1
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @ehca_err(i32* %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %171, %163
  %177 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %178 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %177, i32 0, i32 1
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %176, %160
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @EHCA_EQE_CACHE_SIZE, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %191 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %190, i32 0, i32 1
  %192 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %193

193:                                              ; preds = %189, %182
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %219, %193
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %222

198:                                              ; preds = %194
  %199 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %200 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %199, i32 0, i32 1
  %201 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %201, i64 %203
  %205 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %204, i32 0, i32 1
  %206 = load %struct.ehca_cq*, %struct.ehca_cq** %205, align 8
  %207 = icmp ne %struct.ehca_cq* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %198
  %209 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %210 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %209, i32 0, i32 1
  %211 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %211, i64 %213
  %215 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %214, i32 0, i32 1
  %216 = load %struct.ehca_cq*, %struct.ehca_cq** %215, align 8
  %217 = call i32 @reset_eq_pending(%struct.ehca_cq* %216)
  br label %218

218:                                              ; preds = %208, %198
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %10, align 4
  br label %194

222:                                              ; preds = %194
  %223 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %224 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %223, i32 0, i32 2
  %225 = call i32 @spin_lock(i32* %224)
  %226 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %227 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %227, i32 0, i32 3
  %229 = call i32 @ipz_eqit_eq_peek_valid(i32* %228)
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %11, align 4
  %233 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %234 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %233, i32 0, i32 2
  %235 = call i32 @spin_unlock(i32* %234)
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %301, %222
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %304

240:                                              ; preds = %236
  %241 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %242 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %241, i32 0, i32 1
  %243 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %243, i64 %245
  %247 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %246, i32 0, i32 1
  %248 = load %struct.ehca_cq*, %struct.ehca_cq** %247, align 8
  %249 = icmp ne %struct.ehca_cq* %248, null
  br i1 %249, label %250, label %284

250:                                              ; preds = %240
  %251 = load i64, i64* @ehca_scaling_code, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %255 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %254, i32 0, i32 1
  %256 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %255, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %256, i64 %258
  %260 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %259, i32 0, i32 1
  %261 = load %struct.ehca_cq*, %struct.ehca_cq** %260, align 8
  %262 = call i32 @queue_comp_task(%struct.ehca_cq* %261)
  br label %283

263:                                              ; preds = %250
  %264 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %265 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %264, i32 0, i32 1
  %266 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %266, i64 %268
  %270 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %269, i32 0, i32 1
  %271 = load %struct.ehca_cq*, %struct.ehca_cq** %270, align 8
  store %struct.ehca_cq* %271, %struct.ehca_cq** %16, align 8
  %272 = load %struct.ehca_cq*, %struct.ehca_cq** %16, align 8
  %273 = call i32 @comp_event_callback(%struct.ehca_cq* %272)
  %274 = load %struct.ehca_cq*, %struct.ehca_cq** %16, align 8
  %275 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %274, i32 0, i32 1
  %276 = call i64 @atomic_dec_and_test(i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %263
  %279 = load %struct.ehca_cq*, %struct.ehca_cq** %16, align 8
  %280 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %279, i32 0, i32 0
  %281 = call i32 @wake_up(i32* %280)
  br label %282

282:                                              ; preds = %278, %263
  br label %283

283:                                              ; preds = %282, %253
  br label %300

284:                                              ; preds = %240
  %285 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %286 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %285, i32 0, i32 1
  %287 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %288 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %289 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %290 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %289, i32 0, i32 1
  %291 = load %struct.ehca_eqe_cache_entry*, %struct.ehca_eqe_cache_entry** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %291, i64 %293
  %295 = getelementptr inbounds %struct.ehca_eqe_cache_entry, %struct.ehca_eqe_cache_entry* %294, i32 0, i32 0
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @parse_identifier(%struct.ehca_shca* %288, i64 %298)
  br label %300

300:                                              ; preds = %284, %283
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %10, align 4
  br label %236

304:                                              ; preds = %236
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  br label %324

308:                                              ; preds = %304
  br label %309

309:                                              ; preds = %322, %308
  %310 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %311 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %312 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %311, i32 0, i32 0
  %313 = call i8* @ehca_poll_eq(%struct.ehca_shca* %310, %struct.ehca_eq* %312)
  %314 = bitcast i8* %313 to %struct.ehca_eqe*
  store %struct.ehca_eqe* %314, %struct.ehca_eqe** %17, align 8
  %315 = load %struct.ehca_eqe*, %struct.ehca_eqe** %17, align 8
  %316 = icmp ne %struct.ehca_eqe* %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %309
  br label %323

318:                                              ; preds = %309
  %319 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %320 = load %struct.ehca_eqe*, %struct.ehca_eqe** %17, align 8
  %321 = call i32 @process_eqe(%struct.ehca_shca* %319, %struct.ehca_eqe* %320)
  br label %322

322:                                              ; preds = %318
  br i1 true, label %309, label %323

323:                                              ; preds = %322, %317
  br label %324

324:                                              ; preds = %323, %307, %159
  %325 = load %struct.ehca_eq*, %struct.ehca_eq** %5, align 8
  %326 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %325, i32 0, i32 0
  %327 = call i32 @spin_unlock(i32* %326)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hipz_h_query_int_state(i32, i32) #1

declare dso_local i32 @iosync(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ehca_dbg(i32*, i8*, ...) #1

declare dso_local i8* @ehca_poll_eq(%struct.ehca_shca*, %struct.ehca_eq*) #1

declare dso_local i64 @EHCA_BMASK_GET(i32, i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ehca_cq* @idr_find(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ehca_err(i32*, i8*, i64) #1

declare dso_local i64 @hipz_h_eoi(i32) #1

declare dso_local i32 @reset_eq_pending(%struct.ehca_cq*) #1

declare dso_local i32 @ipz_eqit_eq_peek_valid(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_comp_task(%struct.ehca_cq*) #1

declare dso_local i32 @comp_event_callback(%struct.ehca_cq*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @parse_identifier(%struct.ehca_shca*, i64) #1

declare dso_local i32 @process_eqe(%struct.ehca_shca*, %struct.ehca_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
