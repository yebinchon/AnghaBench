; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_wrb_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_wrb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.hwi_controller*, %struct.be_mem_descriptor* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context*, %struct.hwi_context_memory* }
%struct.hwi_wrb_context = type { %struct.wrb_handle**, %struct.wrb_handle**, i64, i64, i64 }
%struct.wrb_handle = type { i32, %struct.wrb_handle* }
%struct.hwi_context_memory = type { i8* }
%struct.be_mem_descriptor = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.wrb_handle* }
%struct.iscsi_wrb = type { i32, %struct.iscsi_wrb* }

@HWI_MEM_WRBH = common dso_local global i32 0, align 4
@HWI_MEM_WRB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BM_%d : WRBQ Mem Alloc Failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"BM_%d : Mem Alloc Failed. Failing to load\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_init_wrb_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_init_wrb_handle(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_mem_descriptor*, align 8
  %5 = alloca %struct.be_mem_descriptor*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca %struct.wrb_handle*, align 8
  %8 = alloca %struct.hwi_controller*, align 8
  %9 = alloca %struct.hwi_wrb_context*, align 8
  %10 = alloca %struct.iscsi_wrb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store %struct.wrb_handle* null, %struct.wrb_handle** %7, align 8
  store %struct.iscsi_wrb* null, %struct.iscsi_wrb** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 3
  %18 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %17, align 8
  store %struct.be_mem_descriptor* %18, %struct.be_mem_descriptor** %4, align 8
  %19 = load i32, i32* @HWI_MEM_WRBH, align 4
  %20 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %20, i64 %21
  store %struct.be_mem_descriptor* %22, %struct.be_mem_descriptor** %4, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 3
  %25 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %24, align 8
  store %struct.be_mem_descriptor* %25, %struct.be_mem_descriptor** %5, align 8
  %26 = load i32, i32* @HWI_MEM_WRB, align 4
  %27 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %27, i64 %28
  store %struct.be_mem_descriptor* %29, %struct.be_mem_descriptor** %5, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 2
  %32 = load %struct.hwi_controller*, %struct.hwi_controller** %31, align 8
  store %struct.hwi_controller* %32, %struct.hwi_controller** %8, align 8
  %33 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %34 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %33, i32 0, i32 1
  %35 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %34, align 8
  store %struct.hwi_context_memory* %35, %struct.hwi_context_memory** %6, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i32 %42, i32 %43)
  %45 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %46 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %48 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %1
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %55 = call i32 @beiscsi_log(%struct.beiscsi_hba* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %306

58:                                               ; preds = %1
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %195, %58
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %62 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %198

66:                                               ; preds = %59
  %67 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %68 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %67, i32 0, i32 0
  %69 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %69, i64 %71
  store %struct.hwi_wrb_context* %72, %struct.hwi_wrb_context** %9, align 8
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kzalloc(i32 %79, i32 %80)
  %82 = bitcast i8* %81 to %struct.wrb_handle**
  %83 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %84 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %83, i32 0, i32 1
  store %struct.wrb_handle** %82, %struct.wrb_handle*** %84, align 8
  %85 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %86 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %85, i32 0, i32 1
  %87 = load %struct.wrb_handle**, %struct.wrb_handle*** %86, align 8
  %88 = icmp ne %struct.wrb_handle** %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %66
  %90 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %93 = call i32 @beiscsi_log(%struct.beiscsi_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %280

94:                                               ; preds = %66
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 8, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kzalloc(i32 %101, i32 %102)
  %104 = bitcast i8* %103 to %struct.wrb_handle**
  %105 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %106 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %105, i32 0, i32 0
  store %struct.wrb_handle** %104, %struct.wrb_handle*** %106, align 8
  %107 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %108 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %107, i32 0, i32 0
  %109 = load %struct.wrb_handle**, %struct.wrb_handle*** %108, align 8
  %110 = icmp ne %struct.wrb_handle** %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %94
  %112 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %113 = load i32, i32* @KERN_ERR, align 4
  %114 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %115 = call i32 @beiscsi_log(%struct.beiscsi_hba* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %280

116:                                              ; preds = %94
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %147, label %119

119:                                              ; preds = %116
  %120 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %121 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load %struct.wrb_handle*, %struct.wrb_handle** %126, align 8
  store %struct.wrb_handle* %127, %struct.wrb_handle** %7, align 8
  %128 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %129 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %138 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 16, %141
  %143 = udiv i64 %136, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %14, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %119, %116
  %148 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %149 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  %150 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %151 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %153 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %194

156:                                              ; preds = %147
  store i32 0, i32* %13, align 4
  br label %157

157:                                              ; preds = %188, %156
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %160 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ult i32 %158, %162
  br i1 %163, label %164, label %191

164:                                              ; preds = %157
  %165 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %166 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %167 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %166, i32 0, i32 1
  %168 = load %struct.wrb_handle**, %struct.wrb_handle*** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %168, i64 %170
  store %struct.wrb_handle* %165, %struct.wrb_handle** %171, align 8
  %172 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %173 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %174 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %173, i32 0, i32 0
  %175 = load %struct.wrb_handle**, %struct.wrb_handle*** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %175, i64 %177
  store %struct.wrb_handle* %172, %struct.wrb_handle** %178, align 8
  %179 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %180 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %185 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %187 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %186, i32 1
  store %struct.wrb_handle* %187, %struct.wrb_handle** %7, align 8
  br label %188

188:                                              ; preds = %164
  %189 = load i32, i32* %13, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %157

191:                                              ; preds = %157
  %192 = load i32, i32* %11, align 4
  %193 = add i32 %192, -1
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %191, %147
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %59

198:                                              ; preds = %59
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %199

199:                                              ; preds = %276, %198
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %202 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ult i32 %200, %204
  br i1 %205, label %206, label %279

206:                                              ; preds = %199
  %207 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %208 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %207, i32 0, i32 0
  %209 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %209, i64 %211
  store %struct.hwi_wrb_context* %212, %struct.hwi_wrb_context** %9, align 8
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %244, label %215

215:                                              ; preds = %206
  %216 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %5, align 8
  %217 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %216, i32 0, i32 0
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load %struct.wrb_handle*, %struct.wrb_handle** %222, align 8
  %224 = bitcast %struct.wrb_handle* %223 to %struct.iscsi_wrb*
  store %struct.iscsi_wrb* %224, %struct.iscsi_wrb** %10, align 8
  %225 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %5, align 8
  %226 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %225, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = load i32, i32* %14, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %235 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = mul i64 16, %238
  %240 = udiv i64 %233, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %14, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %215, %206
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %275

247:                                              ; preds = %244
  store i32 0, i32* %13, align 4
  br label %248

248:                                              ; preds = %269, %247
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %251 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp ult i32 %249, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %248
  %256 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %257 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %256, i32 0, i32 1
  %258 = load %struct.wrb_handle**, %struct.wrb_handle*** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %258, i64 %260
  %262 = load %struct.wrb_handle*, %struct.wrb_handle** %261, align 8
  store %struct.wrb_handle* %262, %struct.wrb_handle** %7, align 8
  %263 = load %struct.iscsi_wrb*, %struct.iscsi_wrb** %10, align 8
  %264 = bitcast %struct.iscsi_wrb* %263 to %struct.wrb_handle*
  %265 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %266 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %265, i32 0, i32 1
  store %struct.wrb_handle* %264, %struct.wrb_handle** %266, align 8
  %267 = load %struct.iscsi_wrb*, %struct.iscsi_wrb** %10, align 8
  %268 = getelementptr inbounds %struct.iscsi_wrb, %struct.iscsi_wrb* %267, i32 1
  store %struct.iscsi_wrb* %268, %struct.iscsi_wrb** %10, align 8
  br label %269

269:                                              ; preds = %255
  %270 = load i32, i32* %13, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %13, align 4
  br label %248

272:                                              ; preds = %248
  %273 = load i32, i32* %12, align 4
  %274 = add i32 %273, -1
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %272, %244
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %15, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %199

279:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %306

280:                                              ; preds = %111, %89
  %281 = load i32, i32* %15, align 4
  store i32 %281, i32* %13, align 4
  br label %282

282:                                              ; preds = %300, %280
  %283 = load i32, i32* %13, align 4
  %284 = icmp ugt i32 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %282
  %286 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %287 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %286, i32 0, i32 0
  %288 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %287, align 8
  %289 = load i32, i32* %13, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %288, i64 %290
  store %struct.hwi_wrb_context* %291, %struct.hwi_wrb_context** %9, align 8
  %292 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %293 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %292, i32 0, i32 1
  %294 = load %struct.wrb_handle**, %struct.wrb_handle*** %293, align 8
  %295 = call i32 @kfree(%struct.wrb_handle** %294)
  %296 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %297 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %296, i32 0, i32 0
  %298 = load %struct.wrb_handle**, %struct.wrb_handle*** %297, align 8
  %299 = call i32 @kfree(%struct.wrb_handle** %298)
  br label %300

300:                                              ; preds = %285
  %301 = load i32, i32* %13, align 4
  %302 = add i32 %301, -1
  store i32 %302, i32* %13, align 4
  br label %282

303:                                              ; preds = %282
  %304 = load i32, i32* @ENOMEM, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %2, align 4
  br label %306

306:                                              ; preds = %303, %279, %51
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.wrb_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
