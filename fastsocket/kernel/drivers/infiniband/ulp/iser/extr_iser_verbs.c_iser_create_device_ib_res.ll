; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_create_device_ib_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_create_device_ib_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_device = type { i32, %struct.iser_cq_desc*, i8*, i8**, i8**, i32*, i8*, i32, %struct.TYPE_4__* }
%struct.iser_cq_desc = type { i32, %struct.iser_device* }
%struct.TYPE_4__ = type { i32, i32 }

@ISER_MAX_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"using %d CQs, device %s supports %d vectors\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@iser_cq_callback = common dso_local global i32* null, align 8
@iser_cq_event_callback = common dso_local global i32 0, align 4
@ISER_MAX_RX_CQ_LEN = common dso_local global i32 0, align 4
@ISER_MAX_TX_CQ_LEN = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@iser_cq_tasklet_fn = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@iser_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to allocate an IB resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_device*)* @iser_create_device_ib_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_create_device_ib_res(%struct.iser_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_cq_desc*, align 8
  store %struct.iser_device* %0, %struct.iser_device** %3, align 8
  %7 = load i32, i32* @ISER_MAX_CQ, align 4
  %8 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %9 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %8, i32 0, i32 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @min(i32 %7, i32 %12)
  %14 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %15 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %17 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %20 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %19, i32 0, i32 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %25 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %24, i32 0, i32 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iser_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %28)
  %30 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %31 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 16, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.iser_cq_desc* @kmalloc(i32 %35, i32 %36)
  %38 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %39 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %38, i32 0, i32 1
  store %struct.iser_cq_desc* %37, %struct.iser_cq_desc** %39, align 8
  %40 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %41 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %40, i32 0, i32 1
  %42 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %41, align 8
  %43 = icmp eq %struct.iser_cq_desc* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %279

45:                                               ; preds = %1
  %46 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %47 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %46, i32 0, i32 1
  %48 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %47, align 8
  store %struct.iser_cq_desc* %48, %struct.iser_cq_desc** %6, align 8
  %49 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %50 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %49, i32 0, i32 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i8* @ib_alloc_pd(%struct.TYPE_4__* %51)
  %53 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %54 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %56 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %274

61:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %165, %61
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %65 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %168

68:                                               ; preds = %62
  %69 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %70 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %6, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %70, i64 %72
  %74 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %73, i32 0, i32 1
  store %struct.iser_device* %69, %struct.iser_device** %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %6, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %76, i64 %78
  %80 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 8
  %81 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %82 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %81, i32 0, i32 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32*, i32** @iser_cq_callback, align 8
  %85 = load i32, i32* @iser_cq_event_callback, align 4
  %86 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %6, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %86, i64 %88
  %90 = bitcast %struct.iser_cq_desc* %89 to i8*
  %91 = load i32, i32* @ISER_MAX_RX_CQ_LEN, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i8* @ib_create_cq(%struct.TYPE_4__* %83, i32* %84, i32 %85, i8* %90, i32 %91, i32 %92)
  %94 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %95 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %94, i32 0, i32 3
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %93, i8** %99, align 8
  %100 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %101 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %100, i32 0, i32 3
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @IS_ERR(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %68
  br label %224

110:                                              ; preds = %68
  %111 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %112 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %111, i32 0, i32 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* @iser_cq_event_callback, align 4
  %115 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %6, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %115, i64 %117
  %119 = bitcast %struct.iser_cq_desc* %118 to i8*
  %120 = load i32, i32* @ISER_MAX_TX_CQ_LEN, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i8* @ib_create_cq(%struct.TYPE_4__* %113, i32* null, i32 %114, i8* %119, i32 %120, i32 %121)
  %123 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %124 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %123, i32 0, i32 4
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %122, i8** %128, align 8
  %129 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %130 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %129, i32 0, i32 4
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %110
  br label %224

139:                                              ; preds = %110
  %140 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %141 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %140, i32 0, i32 3
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %148 = call i64 @ib_req_notify_cq(i8* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %224

151:                                              ; preds = %139
  %152 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %153 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* @iser_cq_tasklet_fn, align 4
  %159 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %6, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %159, i64 %161
  %163 = ptrtoint %struct.iser_cq_desc* %162 to i64
  %164 = call i32 @tasklet_init(i32* %157, i32 %158, i64 %163)
  br label %165

165:                                              ; preds = %151
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %62

168:                                              ; preds = %62
  %169 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %170 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %173 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %176 = or i32 %174, %175
  %177 = call i8* @ib_get_dma_mr(i8* %171, i32 %176)
  %178 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %179 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %178, i32 0, i32 6
  store i8* %177, i8** %179, align 8
  %180 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %181 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @IS_ERR(i8* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %168
  br label %205

186:                                              ; preds = %168
  %187 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %188 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %187, i32 0, i32 7
  %189 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %190 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %189, i32 0, i32 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* @iser_event_handler, align 4
  %193 = call i32 @INIT_IB_EVENT_HANDLER(i32* %188, %struct.TYPE_4__* %191, i32 %192)
  %194 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %195 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %194, i32 0, i32 7
  %196 = call i64 @ib_register_event_handler(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %200

199:                                              ; preds = %186
  store i32 0, i32* %2, align 4
  br label %281

200:                                              ; preds = %198
  %201 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %202 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @ib_dereg_mr(i8* %203)
  br label %205

205:                                              ; preds = %200, %185
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %220, %205
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %209 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %214 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = call i32 @tasklet_kill(i32* %218)
  br label %220

220:                                              ; preds = %212
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %206

223:                                              ; preds = %206
  br label %224

224:                                              ; preds = %223, %150, %138, %109
  store i32 0, i32* %5, align 4
  br label %225

225:                                              ; preds = %266, %224
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %269

229:                                              ; preds = %225
  %230 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %231 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %230, i32 0, i32 4
  %232 = load i8**, i8*** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %229
  %239 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %240 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %239, i32 0, i32 4
  %241 = load i8**, i8*** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @ib_destroy_cq(i8* %245)
  br label %247

247:                                              ; preds = %238, %229
  %248 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %249 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %248, i32 0, i32 3
  %250 = load i8**, i8*** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %265

256:                                              ; preds = %247
  %257 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %258 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %257, i32 0, i32 3
  %259 = load i8**, i8*** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @ib_destroy_cq(i8* %263)
  br label %265

265:                                              ; preds = %256, %247
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %5, align 4
  br label %225

269:                                              ; preds = %225
  %270 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %271 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @ib_dealloc_pd(i8* %272)
  br label %274

274:                                              ; preds = %269, %60
  %275 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %276 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %275, i32 0, i32 1
  %277 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %276, align 8
  %278 = call i32 @kfree(%struct.iser_cq_desc* %277)
  br label %279

279:                                              ; preds = %274, %44
  %280 = call i32 @iser_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %281

281:                                              ; preds = %279, %199
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @iser_info(i8*, i32, i32, i32) #1

declare dso_local %struct.iser_cq_desc* @kmalloc(i32, i32) #1

declare dso_local i8* @ib_alloc_pd(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ib_create_cq(%struct.TYPE_4__*, i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @ib_req_notify_cq(i8*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i8* @ib_get_dma_mr(i8*, i32) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @ib_register_event_handler(i32*) #1

declare dso_local i32 @ib_dereg_mr(i8*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ib_destroy_cq(i8*) #1

declare dso_local i32 @ib_dealloc_pd(i8*) #1

declare dso_local i32 @kfree(%struct.iser_cq_desc*) #1

declare dso_local i32 @iser_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
