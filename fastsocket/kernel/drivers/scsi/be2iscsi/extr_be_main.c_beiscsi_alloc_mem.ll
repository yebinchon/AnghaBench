; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32*, %struct.mem_array*, %struct.mem_array*, i32, %struct.TYPE_5__ }
%struct.mem_array = type { i32, i32, i32, %struct.mem_array*, %struct.mem_array*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hwi_controller = type { i32, i32, i32, %struct.hwi_controller*, %struct.hwi_controller*, %struct.TYPE_8__, i32 }
%struct.be_mem_descriptor = type { i32, i32, i32, %struct.be_mem_descriptor*, %struct.be_mem_descriptor*, %struct.TYPE_8__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SE_MEM_MAX = common dso_local global i32 0, align 4
@BEISCSI_MAX_FRAGS_INIT = common dso_local global i32 0, align 4
@be_max_phys_size = common dso_local global i32 0, align 4
@BE_MIN_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_alloc_mem(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hwi_controller*, align 8
  %6 = alloca %struct.be_mem_descriptor*, align 8
  %7 = alloca %struct.mem_array*, align 8
  %8 = alloca %struct.mem_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.mem_array*
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 1
  store %struct.mem_array* %19, %struct.mem_array** %21, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 1
  %24 = load %struct.mem_array*, %struct.mem_array** %23, align 8
  %25 = icmp ne %struct.mem_array* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %320

29:                                               ; preds = %1
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 1
  %32 = load %struct.mem_array*, %struct.mem_array** %31, align 8
  %33 = bitcast %struct.mem_array* %32 to %struct.hwi_controller*
  store %struct.hwi_controller* %33, %struct.hwi_controller** %5, align 8
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.hwi_controller*
  %44 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %45 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %44, i32 0, i32 3
  store %struct.hwi_controller* %43, %struct.hwi_controller** %45, align 8
  %46 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %47 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %46, i32 0, i32 3
  %48 = load %struct.hwi_controller*, %struct.hwi_controller** %47, align 8
  %49 = icmp ne %struct.hwi_controller* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %29
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %320

53:                                               ; preds = %29
  %54 = load i32, i32* @SE_MEM_MAX, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.mem_array* @kcalloc(i32 %54, i32 48, i32 %55)
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %58 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %57, i32 0, i32 2
  store %struct.mem_array* %56, %struct.mem_array** %58, align 8
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 2
  %61 = load %struct.mem_array*, %struct.mem_array** %60, align 8
  %62 = icmp ne %struct.mem_array* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %53
  %64 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %65 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %64, i32 0, i32 3
  %66 = load %struct.hwi_controller*, %struct.hwi_controller** %65, align 8
  %67 = bitcast %struct.hwi_controller* %66 to %struct.mem_array*
  %68 = call i32 @kfree(%struct.mem_array* %67)
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 1
  %71 = load %struct.mem_array*, %struct.mem_array** %70, align 8
  %72 = call i32 @kfree(%struct.mem_array* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %320

75:                                               ; preds = %53
  %76 = load i32, i32* @BEISCSI_MAX_FRAGS_INIT, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 48, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kmalloc(i32 %79, i32 %80)
  %82 = bitcast i8* %81 to %struct.mem_array*
  store %struct.mem_array* %82, %struct.mem_array** %8, align 8
  %83 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %84 = icmp ne %struct.mem_array* %83, null
  br i1 %84, label %101, label %85

85:                                               ; preds = %75
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %87 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %86, i32 0, i32 2
  %88 = load %struct.mem_array*, %struct.mem_array** %87, align 8
  %89 = call i32 @kfree(%struct.mem_array* %88)
  %90 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %91 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %90, i32 0, i32 3
  %92 = load %struct.hwi_controller*, %struct.hwi_controller** %91, align 8
  %93 = bitcast %struct.hwi_controller* %92 to %struct.mem_array*
  %94 = call i32 @kfree(%struct.mem_array* %93)
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %95, i32 0, i32 1
  %97 = load %struct.mem_array*, %struct.mem_array** %96, align 8
  %98 = call i32 @kfree(%struct.mem_array* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %320

101:                                              ; preds = %75
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %103 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %102, i32 0, i32 2
  %104 = load %struct.mem_array*, %struct.mem_array** %103, align 8
  %105 = bitcast %struct.mem_array* %104 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %105, %struct.be_mem_descriptor** %6, align 8
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %224, %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @SE_MEM_MAX, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %227

110:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  %111 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  store %struct.mem_array* %111, %struct.mem_array** %7, align 8
  %112 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %113 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %11, align 4
  %119 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %120 = load i32, i32* @BEISCSI_MAX_FRAGS_INIT, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 48, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memset(%struct.mem_array* %119, i32 0, i32 %123)
  %125 = load i32, i32* @be_max_phys_size, align 4
  %126 = mul nsw i32 %125, 1024
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @min(i32 %126, i32 %127)
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %181, %110
  %130 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %131 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @pci_alloc_consistent(i32 %132, i32 %133, i64* %4)
  %135 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %136 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %138 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %129
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @BE_MIN_MEM_SIZE, align 4
  %144 = icmp ule i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %230

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @rounddown_pow_of_two(i32 %148)
  %150 = sub i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @rounddown_pow_of_two(i32 %153)
  store i32 %154, i32* %12, align 4
  br label %158

155:                                              ; preds = %146
  %156 = load i32, i32* %12, align 4
  %157 = udiv i32 %156, 2
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %155, %152
  br label %180

159:                                              ; preds = %129
  %160 = load i64, i64* %4, align 8
  %161 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %162 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i64 %160, i64* %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %168 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* @be_max_phys_size, align 4
  %173 = mul nsw i32 %172, 1024
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @min(i32 %173, i32 %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %10, align 4
  %178 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %179 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %178, i32 1
  store %struct.mem_array* %179, %struct.mem_array** %7, align 8
  br label %180

180:                                              ; preds = %159, %158
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %129, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %187 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %189 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %196 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %10, align 4
  %198 = zext i32 %197 to i64
  %199 = mul i64 48, %198
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i8* @kmalloc(i32 %200, i32 %201)
  %203 = bitcast i8* %202 to %struct.be_mem_descriptor*
  %204 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %205 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %204, i32 0, i32 4
  store %struct.be_mem_descriptor* %203, %struct.be_mem_descriptor** %205, align 8
  %206 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %207 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %206, i32 0, i32 4
  %208 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %207, align 8
  %209 = icmp ne %struct.be_mem_descriptor* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %184
  br label %230

211:                                              ; preds = %184
  %212 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %213 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %212, i32 0, i32 4
  %214 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %213, align 8
  %215 = bitcast %struct.be_mem_descriptor* %214 to %struct.mem_array*
  %216 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = mul i64 48, %218
  %220 = trunc i64 %219 to i32
  %221 = call i32 @memcpy(%struct.mem_array* %215, %struct.mem_array* %216, i32 %220)
  %222 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %223 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %222, i32 1
  store %struct.be_mem_descriptor* %223, %struct.be_mem_descriptor** %6, align 8
  br label %224

224:                                              ; preds = %211
  %225 = load i32, i32* %9, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %106

227:                                              ; preds = %106
  %228 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %229 = call i32 @kfree(%struct.mem_array* %228)
  store i32 0, i32* %2, align 4
  br label %320

230:                                              ; preds = %210, %145
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %233 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %300, %230
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br label %240

240:                                              ; preds = %237, %234
  %241 = phi i1 [ true, %234 ], [ %239, %237 ]
  br i1 %241, label %242, label %301

242:                                              ; preds = %240
  %243 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %244 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %284, %242
  %247 = load i32, i32* %10, align 4
  %248 = icmp ugt i32 %247, 0
  br i1 %248, label %249, label %287

249:                                              ; preds = %246
  %250 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %251 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %254 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %253, i32 0, i32 4
  %255 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sub i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %255, i64 %258
  %260 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %263 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %262, i32 0, i32 4
  %264 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sub i32 %265, 1
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %264, i64 %267
  %269 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %272 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %271, i32 0, i32 4
  %273 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sub i32 %274, 1
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %273, i64 %276
  %278 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @pci_free_consistent(i32 %252, i32 %261, i32 %270, i64 %282)
  br label %284

284:                                              ; preds = %249
  %285 = load i32, i32* %10, align 4
  %286 = add i32 %285, -1
  store i32 %286, i32* %10, align 4
  br label %246

287:                                              ; preds = %246
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %287
  %291 = load i32, i32* %9, align 4
  %292 = add i32 %291, -1
  store i32 %292, i32* %9, align 4
  %293 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %294 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %293, i32 0, i32 4
  %295 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %294, align 8
  %296 = bitcast %struct.be_mem_descriptor* %295 to %struct.mem_array*
  %297 = call i32 @kfree(%struct.mem_array* %296)
  %298 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %299 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %298, i32 -1
  store %struct.be_mem_descriptor* %299, %struct.be_mem_descriptor** %6, align 8
  br label %300

300:                                              ; preds = %290, %287
  br label %234

301:                                              ; preds = %240
  %302 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %303 = call i32 @kfree(%struct.mem_array* %302)
  %304 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %305 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %304, i32 0, i32 2
  %306 = load %struct.mem_array*, %struct.mem_array** %305, align 8
  %307 = call i32 @kfree(%struct.mem_array* %306)
  %308 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %309 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %308, i32 0, i32 1
  %310 = load %struct.mem_array*, %struct.mem_array** %309, align 8
  %311 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %310, i32 0, i32 3
  %312 = load %struct.mem_array*, %struct.mem_array** %311, align 8
  %313 = call i32 @kfree(%struct.mem_array* %312)
  %314 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %315 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %314, i32 0, i32 1
  %316 = load %struct.mem_array*, %struct.mem_array** %315, align 8
  %317 = call i32 @kfree(%struct.mem_array* %316)
  %318 = load i32, i32* @ENOMEM, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %2, align 4
  br label %320

320:                                              ; preds = %301, %227, %85, %63, %50, %26
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.mem_array* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mem_array*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mem_array*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @memcpy(%struct.mem_array*, %struct.mem_array*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
