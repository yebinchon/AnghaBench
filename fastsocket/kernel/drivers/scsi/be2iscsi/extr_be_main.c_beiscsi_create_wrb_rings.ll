; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_wrb_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_wrb_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_17__, %struct.be_mem_descriptor* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.be_mem_descriptor = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.hwi_context_memory = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.mem_array = type { i32, %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.be_dma_mem = type { i32 }

@HWI_MEM_WRB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BM_%d : Memory alloc failed in create wrb ring.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BM_%d : wrbq create failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*)* @beiscsi_create_wrb_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_create_wrb_rings(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1, %struct.hwi_controller* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca %struct.hwi_controller*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mem_array*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.be_dma_mem, align 4
  %19 = alloca %struct.be_mem_descriptor*, align 8
  %20 = alloca %struct.hwi_wrb_context*, align 8
  %21 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %6, align 8
  store %struct.hwi_controller* %2, %struct.hwi_controller** %7, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 2
  %24 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %23, align 8
  store %struct.be_mem_descriptor* %24, %struct.be_mem_descriptor** %19, align 8
  %25 = load i32, i32* @HWI_MEM_WRB, align 4
  %26 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %26, i64 %27
  store %struct.be_mem_descriptor* %28, %struct.be_mem_descriptor** %19, align 8
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 24, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mem_array* @kmalloc(i32 %35, i32 %36)
  store %struct.mem_array* %37, %struct.mem_array** %16, align 8
  %38 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %39 = icmp ne %struct.mem_array* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %3
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %44 = call i32 @beiscsi_log(%struct.beiscsi_hba* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %294

47:                                               ; preds = %3
  %48 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %49 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %17, align 8
  %56 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %57 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %12, align 8
  %67 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %68 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %77 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = udiv i64 %75, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %229, %47
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %87 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ult i32 %85, %89
  br i1 %90, label %91, label %232

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %142

94:                                               ; preds = %91
  %95 = load i8*, i8** %17, align 8
  %96 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %96, i64 %98
  %100 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %99, i32 0, i32 2
  store i8* %95, i8** %100, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %102, i64 %104
  %106 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i8* %101, i8** %109, align 8
  %110 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %111 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %117, i64 %119
  %121 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 8
  %122 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %122, i64 %124
  %126 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr i8, i8* %128, i64 %129
  store i8* %130, i8** %17, align 8
  %131 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %131, i64 %133
  %135 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr i8, i8* %137, i64 %138
  store i8* %139, i8** %12, align 8
  %140 = load i32, i32* %11, align 4
  %141 = add i32 %140, -1
  store i32 %141, i32* %11, align 4
  br label %228

142:                                              ; preds = %91
  %143 = load i32, i32* %13, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %13, align 4
  %145 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %146 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %17, align 8
  %153 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %154 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %12, align 8
  %164 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %19, align 8
  %165 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %164, i32 0, i32 0
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %174 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 4
  %179 = udiv i64 %172, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %11, align 4
  %181 = load i8*, i8** %17, align 8
  %182 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %183 = load i32, i32* %14, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %182, i64 %184
  %186 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %185, i32 0, i32 2
  store i8* %181, i8** %186, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %189 = load i32, i32* %14, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %188, i64 %190
  %192 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  store i8* %187, i8** %195, align 8
  %196 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %197 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %204 = load i32, i32* %14, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %203, i64 %205
  %207 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %206, i32 0, i32 0
  store i32 %202, i32* %207, align 8
  %208 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %209 = load i32, i32* %14, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %208, i64 %210
  %212 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr i8, i8* %214, i64 %215
  store i8* %216, i8** %17, align 8
  %217 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %218 = load i32, i32* %14, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %217, i64 %219
  %221 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** %12, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr i8, i8* %223, i64 %224
  store i8* %225, i8** %12, align 8
  %226 = load i32, i32* %11, align 4
  %227 = add i32 %226, -1
  store i32 %227, i32* %11, align 4
  br label %228

228:                                              ; preds = %142, %94
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %14, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %84

232:                                              ; preds = %84
  store i32 0, i32* %15, align 4
  br label %233

233:                                              ; preds = %288, %232
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %236 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp ult i32 %234, %238
  br i1 %239, label %240, label %291

240:                                              ; preds = %233
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %241 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %242 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %243 = load i32, i32* %15, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %242, i64 %244
  %246 = call i32 @hwi_build_be_sgl_by_offset(%struct.beiscsi_hba* %241, %struct.mem_array* %245, %struct.be_dma_mem* %18)
  %247 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %248 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %247, i32 0, i32 0
  %249 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %250 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %249, i32 0, i32 0
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i64 %253
  %255 = call i32 @be_cmd_wrbq_create(i32* %248, %struct.be_dma_mem* %18, %struct.TYPE_18__* %254)
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %21, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %240
  %259 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %260 = load i32, i32* @KERN_ERR, align 4
  %261 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %262 = call i32 @beiscsi_log(%struct.beiscsi_hba* %259, i32 %260, i32 %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %263 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %264 = call i32 @kfree(%struct.mem_array* %263)
  %265 = load i32, i32* %21, align 4
  store i32 %265, i32* %4, align 4
  br label %294

266:                                              ; preds = %240
  %267 = load %struct.hwi_controller*, %struct.hwi_controller** %7, align 8
  %268 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %267, i32 0, i32 0
  %269 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %269, i64 %271
  store %struct.hwi_wrb_context* %272, %struct.hwi_wrb_context** %20, align 8
  %273 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %274 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %273, i32 0, i32 0
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %20, align 8
  %282 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %20, align 8
  %285 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @BE_SET_CID_TO_CRI(i32 %283, i32 %286)
  br label %288

288:                                              ; preds = %266
  %289 = load i32, i32* %15, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %15, align 4
  br label %233

291:                                              ; preds = %233
  %292 = load %struct.mem_array*, %struct.mem_array** %16, align 8
  %293 = call i32 @kfree(%struct.mem_array* %292)
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %291, %258, %40
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local %struct.mem_array* @kmalloc(i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @hwi_build_be_sgl_by_offset(%struct.beiscsi_hba*, %struct.mem_array*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_cmd_wrbq_create(i32*, %struct.be_dma_mem*, %struct.TYPE_18__*) #1

declare dso_local i32 @kfree(%struct.mem_array*) #1

declare dso_local i32 @BE_SET_CID_TO_CRI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
