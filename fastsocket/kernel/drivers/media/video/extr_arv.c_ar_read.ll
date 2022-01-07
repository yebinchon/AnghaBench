; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_ar_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_ar_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.ar_device = type { i64, i64, i64, i32, i32, i32, i8**, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"ar_read()\0A\00", align 1
@AR_SIZE_QVGA = common dso_local global i64 0, align 8
@ARVCR1_QVGA = common dso_local global i64 0, align 8
@AR_MODE_NORMAL = common dso_local global i64 0, align 8
@ARVCR1_NORMAL = common dso_local global i64 0, align 8
@ARVCR1 = common dso_local global i32 0, align 4
@M32R_DMAEDET_PORTL = common dso_local global i32 0, align 4
@M32R_DMA0CR0_PORTL = common dso_local global i32 0, align 4
@M32R_DMA0CR1_PORTL = common dso_local global i32 0, align 4
@ARDATA32 = common dso_local global i32 0, align 4
@M32R_DMA0CSA_PORTL = common dso_local global i32 0, align 4
@M32R_DMA0RSA_PORTL = common dso_local global i32 0, align 4
@M32R_DMA0CBCUT_PORTL = common dso_local global i32 0, align 4
@M32R_DMA0RBCUT_PORTL = common dso_local global i32 0, align 4
@ARVHCOUNT = common dso_local global i32 0, align 4
@AR_MODE_INTERLACE = common dso_local global i64 0, align 8
@AR_SIZE_VGA = common dso_local global i64 0, align 8
@AR_HEIGHT_VGA = common dso_local global i32 0, align 4
@M32R_DMA0CDA_PORTL = common dso_local global i32 0, align 4
@yuv = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"arv: failed while copy_to_user yuv.\0A\00", align 1
@EFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@ARVCR1_HIEN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@M32R_DMA0RDA_PORTL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @ar_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar_read(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.ar_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call %struct.video_device* @video_devdata(%struct.file* %21)
  store %struct.video_device* %22, %struct.video_device** %9, align 8
  %23 = load %struct.video_device*, %struct.video_device** %9, align 8
  %24 = call %struct.ar_device* @video_get_drvdata(%struct.video_device* %23)
  store %struct.ar_device* %24, %struct.ar_device** %10, align 8
  %25 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %26 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %28 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %30 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AR_SIZE_QVGA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i64, i64* @ARVCR1_QVGA, align 8
  %36 = load i64, i64* %12, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %34, %4
  %39 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %40 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AR_MODE_NORMAL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @ARVCR1_NORMAL, align 8
  %46 = load i64, i64* %12, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %50 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %49, i32 0, i32 7
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @ARVCR1, align 4
  %55 = call i32 @ar_outl(i32 %53, i32 %54)
  %56 = call i32 (...) @disable_dma()
  %57 = load i32, i32* @M32R_DMAEDET_PORTL, align 4
  %58 = call i32 @ar_outl(i32 32768, i32 %57)
  %59 = load i32, i32* @M32R_DMA0CR0_PORTL, align 4
  %60 = call i32 @ar_outl(i32 -1601826048, i32 %59)
  %61 = load i32, i32* @M32R_DMA0CR1_PORTL, align 4
  %62 = call i32 @ar_outl(i32 16777216, i32 %61)
  %63 = load i32, i32* @ARDATA32, align 4
  %64 = load i32, i32* @M32R_DMA0CSA_PORTL, align 4
  %65 = call i32 @ar_outl(i32 %63, i32 %64)
  %66 = load i32, i32* @ARDATA32, align 4
  %67 = load i32, i32* @M32R_DMA0RSA_PORTL, align 4
  %68 = call i32 @ar_outl(i32 %66, i32 %67)
  %69 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %70 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @M32R_DMA0CBCUT_PORTL, align 4
  %73 = call i32 @ar_outl(i32 %71, i32 %72)
  %74 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %75 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @M32R_DMA0RBCUT_PORTL, align 4
  %78 = call i32 @ar_outl(i32 %76, i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @local_irq_save(i64 %79)
  br label %81

81:                                               ; preds = %85, %48
  %82 = load i32, i32* @ARVHCOUNT, align 4
  %83 = call i32 @ar_inl(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (...) @cpu_relax()
  br label %81

87:                                               ; preds = %81
  %88 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %89 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AR_MODE_INTERLACE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %152

93:                                               ; preds = %87
  %94 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %95 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AR_SIZE_VGA, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %93
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %148, %99
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %103 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %100
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @wait_for_vertical_sync(i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @AR_HEIGHT_VGA, align 4
  %111 = sdiv i32 %110, 2
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %15, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %20, align 4
  br label %123

116:                                              ; preds = %106
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @AR_HEIGHT_VGA, align 4
  %119 = sdiv i32 %118, 2
  %120 = sub nsw i32 %117, %119
  %121 = shl i32 %120, 1
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %123

123:                                              ; preds = %116, %113
  %124 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %125 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %124, i32 0, i32 6
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @virt_to_phys(i8* %130)
  %132 = load i32, i32* @M32R_DMA0CDA_PORTL, align 4
  %133 = call i32 @ar_outl(i32 %131, i32 %132)
  %134 = call i32 (...) @enable_dma()
  br label %135

135:                                              ; preds = %141, %123
  %136 = load i32, i32* @M32R_DMAEDET_PORTL, align 4
  %137 = call i32 @ar_inl(i32 %136)
  %138 = and i32 %137, 32768
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 (...) @cpu_relax()
  br label %135

143:                                              ; preds = %135
  %144 = call i32 (...) @disable_dma()
  %145 = call i32 (...) @clear_dma_status()
  %146 = load i32, i32* @M32R_DMA0CR0_PORTL, align 4
  %147 = call i32 @ar_outl(i32 -1601826048, i32 %146)
  br label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %100

151:                                              ; preds = %100
  br label %190

152:                                              ; preds = %93, %87
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %186, %152
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %156 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @wait_for_vertical_sync(i32 %160)
  %162 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %163 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %162, i32 0, i32 6
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @virt_to_phys(i8* %168)
  %170 = load i32, i32* @M32R_DMA0CDA_PORTL, align 4
  %171 = call i32 @ar_outl(i32 %169, i32 %170)
  %172 = call i32 (...) @enable_dma()
  br label %173

173:                                              ; preds = %179, %159
  %174 = load i32, i32* @M32R_DMAEDET_PORTL, align 4
  %175 = call i32 @ar_inl(i32 %174)
  %176 = and i32 %175, 32768
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = call i32 (...) @cpu_relax()
  br label %173

181:                                              ; preds = %173
  %182 = call i32 (...) @disable_dma()
  %183 = call i32 (...) @clear_dma_status()
  %184 = load i32, i32* @M32R_DMA0CR0_PORTL, align 4
  %185 = call i32 @ar_outl(i32 -1601826048, i32 %184)
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %153

189:                                              ; preds = %153
  br label %190

190:                                              ; preds = %189, %151
  %191 = load i64, i64* %13, align 8
  %192 = call i32 @local_irq_restore(i64 %191)
  %193 = load i8*, i8** @yuv, align 8
  store i8* %193, i8** %17, align 8
  %194 = load i8*, i8** %17, align 8
  %195 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %196 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sdiv i64 %197, 2
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  store i8* %199, i8** %18, align 8
  %200 = load i8*, i8** %18, align 8
  %201 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %202 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = sdiv i64 %203, 4
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  store i8* %205, i8** %19, align 8
  store i32 0, i32* %15, align 4
  br label %206

206:                                              ; preds = %251, %190
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %209 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %254

212:                                              ; preds = %206
  %213 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %214 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %213, i32 0, i32 6
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %14, align 8
  store i32 0, i32* %16, align 4
  br label %220

220:                                              ; preds = %247, %212
  %221 = load i32, i32* %16, align 4
  %222 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %223 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %250

226:                                              ; preds = %220
  %227 = load i8*, i8** %14, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %14, align 8
  %229 = load i8, i8* %227, align 1
  %230 = load i8*, i8** %17, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %17, align 8
  store i8 %229, i8* %230, align 1
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %14, align 8
  %234 = load i8, i8* %232, align 1
  %235 = load i8*, i8** %18, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %18, align 8
  store i8 %234, i8* %235, align 1
  %237 = load i8*, i8** %14, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %14, align 8
  %239 = load i8, i8* %237, align 1
  %240 = load i8*, i8** %17, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %17, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i8*, i8** %14, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %14, align 8
  %244 = load i8, i8* %242, align 1
  %245 = load i8*, i8** %19, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %19, align 8
  store i8 %244, i8* %245, align 1
  br label %247

247:                                              ; preds = %226
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 4
  store i32 %249, i32* %16, align 4
  br label %220

250:                                              ; preds = %220
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %15, align 4
  br label %206

254:                                              ; preds = %206
  %255 = load i8*, i8** %6, align 8
  %256 = load i8*, i8** @yuv, align 8
  %257 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %258 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = call i64 @copy_to_user(i8* %255, i8* %256, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %254
  %264 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %265 = load i64, i64* @EFAULT, align 8
  %266 = sub nsw i64 0, %265
  store i64 %266, i64* %11, align 8
  br label %270

267:                                              ; preds = %254
  %268 = load i64, i64* %11, align 8
  %269 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %268)
  br label %270

270:                                              ; preds = %267, %263
  %271 = load %struct.ar_device*, %struct.ar_device** %10, align 8
  %272 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %271, i32 0, i32 7
  %273 = call i32 @mutex_unlock(i32* %272)
  %274 = load i64, i64* %11, align 8
  ret i64 %274
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.ar_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar_outl(i32, i32) #1

declare dso_local i32 @disable_dma(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ar_inl(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @wait_for_vertical_sync(i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @enable_dma(...) #1

declare dso_local i32 @clear_dma_status(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
