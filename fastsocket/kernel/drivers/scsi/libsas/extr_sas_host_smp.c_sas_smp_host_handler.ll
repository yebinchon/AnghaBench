; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_host_smp.c_sas_smp_host_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_host_smp.c_sas_smp_host_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.request = type { i32, i32 }
%struct.sas_ha_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SMP request/response frame crosses page boundary\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@SMP_REQUEST = common dso_local global i32 0, align 4
@SMP_RESPONSE = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_UNK = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@SAS_EXPANDER_VENDOR_ID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"libsas virt phy\00", align 1
@SAS_EXPANDER_PRODUCT_ID_LEN = common dso_local global i32 0, align 4
@SMP_RESP_INV_FRM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_smp_host_handler(%struct.Scsi_Host* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sas_ha_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %14)
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @blk_rq_bytes(%struct.request* %18)
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = call i32 @blk_rq_bytes(%struct.request* %22)
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  br label %336

26:                                               ; preds = %21
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bio_offset(i32 %29)
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = call i32 @blk_rq_bytes(%struct.request* %31)
  %33 = add nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load %struct.request*, %struct.request** %6, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bio_offset(i32 %40)
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = call i32 @blk_rq_bytes(%struct.request* %42)
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %37, %26
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %51 = call i32 @shost_printk(i32 %49, %struct.Scsi_Host* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %336

52:                                               ; preds = %37
  %53 = load %struct.request*, %struct.request** %5, align 8
  %54 = call i32 @blk_rq_bytes(%struct.request* %53)
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @kzalloc(i32 %54, i32 %55)
  store i32* %56, i32** %7, align 8
  %57 = load %struct.request*, %struct.request** %6, align 8
  %58 = call i32 @blk_rq_bytes(%struct.request* %57)
  %59 = call i32 @max(i32 %58, i32 128)
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kzalloc(i32 %59, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %52
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %336

70:                                               ; preds = %64
  %71 = call i32 (...) @local_irq_disable()
  %72 = load %struct.request*, %struct.request** %5, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bio_page(i32 %74)
  %76 = load i32, i32* @KM_USER0, align 4
  %77 = call i32* @kmap_atomic(i32 %75, i32 %76)
  %78 = load %struct.request*, %struct.request** %5, align 8
  %79 = getelementptr inbounds %struct.request, %struct.request* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bio_offset(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.request*, %struct.request** %5, align 8
  %87 = call i32 @blk_rq_bytes(%struct.request* %86)
  %88 = call i32 (i32*, ...) @memcpy(i32* %84, i32* %85, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.request*, %struct.request** %5, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bio_offset(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i32, i32* %89, i64 %95
  %97 = load i32, i32* @KM_USER0, align 4
  %98 = call i32 @kunmap_atomic(i32* %96, i32 %97)
  %99 = call i32 (...) @local_irq_enable()
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SMP_REQUEST, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %70
  br label %336

106:                                              ; preds = %70
  store i32 0, i32* %11, align 4
  %107 = load i32, i32* @SMP_RESPONSE, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @SMP_RESP_FUNC_UNK, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %300 [
    i32 133, label %121
    i32 132, label %138
    i32 134, label %163
    i32 137, label %164
    i32 131, label %189
    i32 130, label %190
    i32 129, label %215
    i32 128, label %216
    i32 138, label %262
    i32 136, label %263
    i32 135, label %299
  ]

121:                                              ; preds = %106
  %122 = load %struct.request*, %struct.request** %5, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 8
  store i32 %125, i32* %123, align 4
  %126 = load %struct.request*, %struct.request** %6, align 8
  %127 = getelementptr inbounds %struct.request, %struct.request* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 32
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %134 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 9
  store i32 %135, i32* %137, align 4
  br label %301

138:                                              ; preds = %106
  %139 = load %struct.request*, %struct.request** %5, align 8
  %140 = getelementptr inbounds %struct.request, %struct.request* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 8
  store i32 %142, i32* %140, align 4
  %143 = load %struct.request*, %struct.request** %6, align 8
  %144 = getelementptr inbounds %struct.request, %struct.request* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 64
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 12
  %152 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %153 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @SAS_EXPANDER_VENDOR_ID_LEN, align 4
  %158 = call i32 (i32*, ...) @memcpy(i32* %151, i32* %156, i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 20
  %161 = load i32, i32* @SAS_EXPANDER_PRODUCT_ID_LEN, align 4
  %162 = call i32 (i32*, ...) @memcpy(i32* %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %301

163:                                              ; preds = %106
  br label %301

164:                                              ; preds = %106
  %165 = load %struct.request*, %struct.request** %5, align 8
  %166 = getelementptr inbounds %struct.request, %struct.request* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 16
  store i32 %168, i32* %166, align 4
  %169 = load %struct.request*, %struct.request** %5, align 8
  %170 = getelementptr inbounds %struct.request, %struct.request* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load %struct.request*, %struct.request** %5, align 8
  %175 = getelementptr inbounds %struct.request, %struct.request* %174, i32 0, i32 0
  store i32 0, i32* %175, align 4
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %11, align 4
  br label %336

178:                                              ; preds = %164
  %179 = load %struct.request*, %struct.request** %6, align 8
  %180 = getelementptr inbounds %struct.request, %struct.request* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 56
  store i32 %182, i32* %180, align 4
  %183 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 9
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @sas_host_smp_discover(%struct.sas_ha_struct* %183, i32* %184, i32 %187)
  br label %301

189:                                              ; preds = %106
  br label %301

190:                                              ; preds = %106
  %191 = load %struct.request*, %struct.request** %5, align 8
  %192 = getelementptr inbounds %struct.request, %struct.request* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 16
  store i32 %194, i32* %192, align 4
  %195 = load %struct.request*, %struct.request** %5, align 8
  %196 = getelementptr inbounds %struct.request, %struct.request* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %190
  %200 = load %struct.request*, %struct.request** %5, align 8
  %201 = getelementptr inbounds %struct.request, %struct.request* %200, i32 0, i32 0
  store i32 0, i32* %201, align 4
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %11, align 4
  br label %336

204:                                              ; preds = %190
  %205 = load %struct.request*, %struct.request** %6, align 8
  %206 = getelementptr inbounds %struct.request, %struct.request* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, 60
  store i32 %208, i32* %206, align 4
  %209 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 9
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @sas_report_phy_sata(%struct.sas_ha_struct* %209, i32* %210, i32 %213)
  br label %301

215:                                              ; preds = %106
  br label %301

216:                                              ; preds = %106
  store i32 11, i32* %12, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %13, align 4
  %220 = load %struct.request*, %struct.request** %5, align 8
  %221 = call i32 @blk_rq_bytes(%struct.request* %220)
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %222, 4
  %224 = add nsw i32 11, %223
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %234, label %226

226:                                              ; preds = %216
  %227 = load %struct.request*, %struct.request** %5, align 8
  %228 = getelementptr inbounds %struct.request, %struct.request* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %13, align 4
  %231 = mul nsw i32 %230, 4
  %232 = add nsw i32 11, %231
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %226, %216
  %235 = load i32, i32* @SMP_RESP_INV_FRM_LEN, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  store i32 %235, i32* %237, align 4
  br label %301

238:                                              ; preds = %226
  %239 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %240 = load i32*, i32** %8, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %7, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32*, i32** %7, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 8
  %250 = call i32 @sas_host_smp_write_gpio(%struct.sas_ha_struct* %239, i32* %240, i32 %243, i32 %246, i32 %247, i32* %249)
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* %13, align 4
  %252 = mul nsw i32 %251, 4
  %253 = add nsw i32 11, %252
  %254 = load %struct.request*, %struct.request** %5, align 8
  %255 = getelementptr inbounds %struct.request, %struct.request* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load %struct.request*, %struct.request** %6, align 8
  %259 = getelementptr inbounds %struct.request, %struct.request* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %260, 8
  store i32 %261, i32* %259, align 4
  br label %301

262:                                              ; preds = %106
  br label %301

263:                                              ; preds = %106
  %264 = load %struct.request*, %struct.request** %5, align 8
  %265 = getelementptr inbounds %struct.request, %struct.request* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %266, 44
  store i32 %267, i32* %265, align 4
  %268 = load %struct.request*, %struct.request** %5, align 8
  %269 = getelementptr inbounds %struct.request, %struct.request* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %263
  %273 = load %struct.request*, %struct.request** %5, align 8
  %274 = getelementptr inbounds %struct.request, %struct.request* %273, i32 0, i32 0
  store i32 0, i32* %274, align 4
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %11, align 4
  br label %336

277:                                              ; preds = %263
  %278 = load %struct.request*, %struct.request** %6, align 8
  %279 = getelementptr inbounds %struct.request, %struct.request* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %280, 8
  store i32 %281, i32* %279, align 4
  %282 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %283 = load i32*, i32** %7, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 9
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %7, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 10
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %7, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 32
  %291 = load i32, i32* %290, align 4
  %292 = ashr i32 %291, 4
  %293 = load i32*, i32** %7, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 33
  %295 = load i32, i32* %294, align 4
  %296 = ashr i32 %295, 4
  %297 = load i32*, i32** %8, align 8
  %298 = call i32 @sas_phy_control(%struct.sas_ha_struct* %282, i32 %285, i32 %288, i32 %292, i32 %296, i32* %297)
  br label %301

299:                                              ; preds = %106
  br label %301

300:                                              ; preds = %106
  br label %301

301:                                              ; preds = %300, %299, %277, %262, %238, %234, %215, %204, %189, %178, %163, %138, %121
  %302 = call i32 (...) @local_irq_disable()
  %303 = load %struct.request*, %struct.request** %6, align 8
  %304 = getelementptr inbounds %struct.request, %struct.request* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @bio_page(i32 %305)
  %307 = load i32, i32* @KM_USER0, align 4
  %308 = call i32* @kmap_atomic(i32 %306, i32 %307)
  %309 = load %struct.request*, %struct.request** %6, align 8
  %310 = getelementptr inbounds %struct.request, %struct.request* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @bio_offset(i32 %311)
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %308, i64 %313
  store i32* %314, i32** %9, align 8
  %315 = load i32*, i32** %9, align 8
  %316 = load i32*, i32** %8, align 8
  %317 = load %struct.request*, %struct.request** %6, align 8
  %318 = call i32 @blk_rq_bytes(%struct.request* %317)
  %319 = call i32 (i32*, ...) @memcpy(i32* %315, i32* %316, i32 %318)
  %320 = load %struct.request*, %struct.request** %6, align 8
  %321 = getelementptr inbounds %struct.request, %struct.request* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @bio_page(i32 %322)
  %324 = call i32 @flush_kernel_dcache_page(i32 %323)
  %325 = load i32*, i32** %9, align 8
  %326 = load %struct.request*, %struct.request** %6, align 8
  %327 = getelementptr inbounds %struct.request, %struct.request* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @bio_offset(i32 %328)
  %330 = sext i32 %329 to i64
  %331 = sub i64 0, %330
  %332 = getelementptr inbounds i32, i32* %325, i64 %331
  %333 = load i32, i32* @KM_USER0, align 4
  %334 = call i32 @kunmap_atomic(i32* %332, i32 %333)
  %335 = call i32 (...) @local_irq_enable()
  br label %336

336:                                              ; preds = %301, %272, %199, %173, %105, %67, %48, %25
  %337 = load i32*, i32** %7, align 8
  %338 = call i32 @kfree(i32* %337)
  %339 = load i32*, i32** %8, align 8
  %340 = call i32 @kfree(i32* %339)
  %341 = load i32, i32* %11, align 4
  ret i32 %341
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @bio_offset(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i32 @bio_page(i32) #1

declare dso_local i32 @memcpy(i32*, ...) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @sas_host_smp_discover(%struct.sas_ha_struct*, i32*, i32) #1

declare dso_local i32 @sas_report_phy_sata(%struct.sas_ha_struct*, i32*, i32) #1

declare dso_local i32 @sas_host_smp_write_gpio(%struct.sas_ha_struct*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @sas_phy_control(%struct.sas_ha_struct*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @flush_kernel_dcache_page(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
