; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { i64 }
%struct.dasd_block = type { i32, i32, %struct.dasd_device* }
%struct.request = type { i32 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@dasd_page_cache = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* @dasd_eckd_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_cp(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dasd_eckd_private*, align 8
  %13 = alloca %struct.dasd_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %25 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %26 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %25, i32 0, i32 2
  %27 = load %struct.dasd_device*, %struct.dasd_device** %26, align 8
  store %struct.dasd_device* %27, %struct.dasd_device** %13, align 8
  %28 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %31, %struct.dasd_eckd_private** %12, align 8
  %32 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %33 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %21, align 4
  %35 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %36 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %35, i32 0, i32 3
  %37 = load i32, i32* %21, align 4
  %38 = call i32 @recs_per_track(i32* %36, i32 0, i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %43)
  store %struct.dasd_ccw_req* %44, %struct.dasd_ccw_req** %4, align 8
  br label %240

45:                                               ; preds = %3
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = call i32 @blk_rq_pos(%struct.request* %46)
  %48 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %49 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %47, %50
  store i32 %51, i32* %16, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %20, align 4
  %54 = call i32 @sector_div(i32 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.request*, %struct.request** %7, align 8
  %56 = call i32 @blk_rq_pos(%struct.request* %55)
  %57 = load %struct.request*, %struct.request** %7, align 8
  %58 = call i32 @blk_rq_sectors(%struct.request* %57)
  %59 = add nsw i32 %56, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %62 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %60, %63
  store i32 %64, i32* %17, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @sector_div(i32 %65, i32 %66)
  store i32 %67, i32* %19, align 4
  %68 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %69 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %45
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %20, align 4
  %75 = mul i32 2, %74
  %76 = icmp ult i32 %73, %75
  br label %77

77:                                               ; preds = %72, %45
  %78 = phi i1 [ false, %45 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %22, align 4
  %80 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %81 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 40
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 32
  store i32 %86, i32* %11, align 4
  %87 = load %struct.request*, %struct.request** %7, align 8
  %88 = call i32 @blk_rq_bytes(%struct.request* %87)
  store i32 %88, i32* %23, align 4
  %89 = load %struct.request*, %struct.request** %7, align 8
  %90 = call i64 @rq_data_dir(%struct.request* %89)
  %91 = load i64, i64* @WRITE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %77
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  %97 = mul nsw i32 %96, 4
  %98 = load i32, i32* %23, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %93, %77
  %101 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %102 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 9
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 32
  store i32 %107, i32* %8, align 4
  %108 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %109 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 12
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 64
  store i32 %114, i32* %9, align 4
  %115 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %116 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 8
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 1
  store i32 %121, i32* %10, align 4
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %24, align 8
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %100
  %125 = load i64, i64* @dasd_page_cache, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124, %100
  br label %222

128:                                              ; preds = %124
  %129 = load i32, i32* %23, align 4
  %130 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %131 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ule i32 %129, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %128
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %137, %134
  %142 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %143 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %144 = load %struct.request*, %struct.request** %7, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %21, align 4
  %153 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_tpm_track(%struct.dasd_device* %142, %struct.dasd_block* %143, %struct.request* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  store %struct.dasd_ccw_req* %153, %struct.dasd_ccw_req** %24, align 8
  %154 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %155 = call i64 @IS_ERR(%struct.dasd_ccw_req* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %141
  %158 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %159 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %158)
  %160 = load i32, i32* @EAGAIN, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp ne i32 %159, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %165 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %164)
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %24, align 8
  br label %170

170:                                              ; preds = %169, %163, %157, %141
  br label %221

171:                                              ; preds = %137, %128
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %220

174:                                              ; preds = %171
  %175 = load %struct.request*, %struct.request** %7, align 8
  %176 = call i64 @rq_data_dir(%struct.request* %175)
  %177 = load i64, i64* @READ, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %179, %174
  %183 = load %struct.request*, %struct.request** %7, align 8
  %184 = call i64 @rq_data_dir(%struct.request* %183)
  %185 = load i64, i64* @WRITE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %220

187:                                              ; preds = %182
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %220

190:                                              ; preds = %187, %179
  %191 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %192 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %193 = load %struct.request*, %struct.request** %7, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %21, align 4
  %202 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_track(%struct.dasd_device* %191, %struct.dasd_block* %192, %struct.request* %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  store %struct.dasd_ccw_req* %202, %struct.dasd_ccw_req** %24, align 8
  %203 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %204 = call i64 @IS_ERR(%struct.dasd_ccw_req* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %190
  %207 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %208 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %207)
  %209 = load i32, i32* @EAGAIN, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp ne i32 %208, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %214 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %213)
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  %217 = icmp ne i32 %214, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %24, align 8
  br label %219

219:                                              ; preds = %218, %212, %206, %190
  br label %220

220:                                              ; preds = %219, %187, %182, %171
  br label %221

221:                                              ; preds = %220, %170
  br label %222

222:                                              ; preds = %221, %127
  %223 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %224 = icmp ne %struct.dasd_ccw_req* %223, null
  br i1 %224, label %238, label %225

225:                                              ; preds = %222
  %226 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %227 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %228 = load %struct.request*, %struct.request** %7, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %21, align 4
  %237 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_single(%struct.dasd_device* %226, %struct.dasd_block* %227, %struct.request* %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  store %struct.dasd_ccw_req* %237, %struct.dasd_ccw_req** %24, align 8
  br label %238

238:                                              ; preds = %225, %222
  %239 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  store %struct.dasd_ccw_req* %239, %struct.dasd_ccw_req** %4, align 8
  br label %240

240:                                              ; preds = %238, %41
  %241 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %241
}

declare dso_local i32 @recs_per_track(i32*, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_tpm_track(%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_track(%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_single(%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
