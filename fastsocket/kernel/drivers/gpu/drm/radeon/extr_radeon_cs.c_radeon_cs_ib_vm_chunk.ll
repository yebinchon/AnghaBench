; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_vm_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_vm_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.radeon_cs_parser = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, i32, %struct.radeon_cs_chunk*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.radeon_cs_chunk = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i32, i32 }

@RADEON_CS_USE_VM = common dso_local global i32 0, align 4
@CHIP_TAHITI = common dso_local global i64 0, align 8
@RADEON_IB_VM_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cs IB CONST too big: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get const ib !\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cs IB too big: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to get ib !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_cs_parser*)* @radeon_cs_ib_vm_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_ib_vm_chunk(%struct.radeon_device* %0, %struct.radeon_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_chunk*, align 8
  %7 = alloca %struct.radeon_fpriv*, align 8
  %8 = alloca %struct.radeon_vm*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_cs_parser* %1, %struct.radeon_cs_parser** %5, align 8
  %10 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %10, i32 0, i32 7
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %13, align 8
  store %struct.radeon_fpriv* %14, %struct.radeon_fpriv** %7, align 8
  %15 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %16 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %15, i32 0, i32 0
  store %struct.radeon_vm* %16, %struct.radeon_vm** %8, align 8
  %17 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %278

22:                                               ; preds = %2
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RADEON_CS_USE_VM, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %278

30:                                               ; preds = %22
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHIP_TAHITI, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %119

36:                                               ; preds = %30
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %119

41:                                               ; preds = %36
  %42 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %42, i32 0, i32 6
  %44 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %43, align 8
  %45 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %44, i64 %48
  store %struct.radeon_cs_chunk* %49, %struct.radeon_cs_chunk** %6, align 8
  %50 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RADEON_IB_VM_MAX_SIZE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %278

62:                                               ; preds = %41
  %63 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %65 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %67, i32 0, i32 4
  %69 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %70 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 4
  %74 = call i32 @radeon_ib_get(%struct.radeon_device* %63, i32 %66, %struct.TYPE_10__* %68, %struct.radeon_vm* %69, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %278

80:                                               ; preds = %62
  %81 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %85 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %88 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %91 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 4
  %101 = call i64 @DRM_COPY_FROM_USER(i32 %93, i32 %96, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %80
  %104 = load i32, i32* @EFAULT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %278

106:                                              ; preds = %80
  %107 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %108 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %111, i32 0, i32 4
  %113 = call i32 @radeon_ring_ib_parse(%struct.radeon_device* %107, i32 %110, %struct.TYPE_10__* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %278

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %36, %30
  %120 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %121 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %120, i32 0, i32 6
  %122 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %121, align 8
  %123 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %124 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %122, i64 %126
  store %struct.radeon_cs_chunk* %127, %struct.radeon_cs_chunk** %6, align 8
  %128 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %129 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RADEON_IB_VM_MAX_SIZE, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %119
  %134 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %135 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %278

140:                                              ; preds = %119
  %141 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %142 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %143 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %146 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %145, i32 0, i32 3
  %147 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %148 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %149 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 4
  %152 = call i32 @radeon_ib_get(%struct.radeon_device* %141, i32 %144, %struct.TYPE_10__* %146, %struct.radeon_vm* %147, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %140
  %156 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %278

158:                                              ; preds = %140
  %159 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %160 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %163 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %166 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %170 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %173 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %174, 4
  %176 = call i64 @DRM_COPY_FROM_USER(i32 %168, i32 %171, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %158
  %179 = load i32, i32* @EFAULT, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %278

181:                                              ; preds = %158
  %182 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %183 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %184 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %187 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %186, i32 0, i32 3
  %188 = call i32 @radeon_ring_ib_parse(%struct.radeon_device* %182, i32 %185, %struct.TYPE_10__* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %181
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %3, align 4
  br label %278

193:                                              ; preds = %181
  %194 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = call i32 @mutex_lock(i32* %196)
  %198 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %199 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %198, i32 0, i32 0
  %200 = call i32 @mutex_lock(i32* %199)
  %201 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %202 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %203 = call i32 @radeon_vm_alloc_pt(%struct.radeon_device* %201, %struct.radeon_vm* %202)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %193
  br label %266

207:                                              ; preds = %193
  %208 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %209 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %210 = call i32 @radeon_bo_vm_update_pte(%struct.radeon_cs_parser* %208, %struct.radeon_vm* %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  br label %266

214:                                              ; preds = %207
  %215 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %216 = call i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser* %215)
  %217 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %218 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %217, i32 0, i32 3
  %219 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %220 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @radeon_ib_sync_to(%struct.TYPE_10__* %218, i32 %221)
  %223 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %224 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %223, i32 0, i32 3
  %225 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %226 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %227 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %228 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @radeon_vm_grab_id(%struct.radeon_device* %225, %struct.radeon_vm* %226, i32 %229)
  %231 = call i32 @radeon_ib_sync_to(%struct.TYPE_10__* %224, i32 %230)
  %232 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @CHIP_TAHITI, align 8
  %236 = icmp sge i64 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %214
  %238 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %239 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, -1
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %244 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %245 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %244, i32 0, i32 3
  %246 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %247 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %246, i32 0, i32 4
  %248 = call i32 @radeon_ib_schedule(%struct.radeon_device* %243, %struct.TYPE_10__* %245, %struct.TYPE_10__* %247)
  store i32 %248, i32* %9, align 4
  br label %254

249:                                              ; preds = %237, %214
  %250 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %251 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %252 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %251, i32 0, i32 3
  %253 = call i32 @radeon_ib_schedule(%struct.radeon_device* %250, %struct.TYPE_10__* %252, %struct.TYPE_10__* null)
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %249, %242
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %254
  %258 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %259 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %260 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %261 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @radeon_vm_fence(%struct.radeon_device* %258, %struct.radeon_vm* %259, i32 %263)
  br label %265

265:                                              ; preds = %257, %254
  br label %266

266:                                              ; preds = %265, %213, %206
  %267 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %268 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %269 = call i32 @radeon_vm_add_to_lru(%struct.radeon_device* %267, %struct.radeon_vm* %268)
  %270 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %271 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %270, i32 0, i32 0
  %272 = call i32 @mutex_unlock(i32* %271)
  %273 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %274 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = call i32 @mutex_unlock(i32* %275)
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %266, %191, %178, %155, %133, %116, %103, %77, %55, %29, %21
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.TYPE_10__*, %struct.radeon_vm*, i32) #1

declare dso_local i64 @DRM_COPY_FROM_USER(i32, i32, i32) #1

declare dso_local i32 @radeon_ring_ib_parse(%struct.radeon_device*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_vm_alloc_pt(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_bo_vm_update_pte(%struct.radeon_cs_parser*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_ib_sync_to(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @radeon_vm_grab_id(%struct.radeon_device*, %struct.radeon_vm*, i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @radeon_vm_fence(%struct.radeon_device*, %struct.radeon_vm*, i32) #1

declare dso_local i32 @radeon_vm_add_to_lru(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
