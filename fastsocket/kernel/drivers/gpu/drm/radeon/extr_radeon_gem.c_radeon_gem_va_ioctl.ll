; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_va_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_va_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.radeon_device* }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { i32 }
%struct.drm_radeon_gem_va = type { i32, i64, i32, i32, i64 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }
%struct.radeon_bo_va = type { i64 }

@RADEON_VA_RESULT_ERROR = common dso_local global i8* null, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_VA_RESERVED_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"offset 0x%lX is in reserved area 0x%X\0A\00", align 1
@RADEON_VM_PAGE_VALID = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid flags 0x%08X vs 0x%08X\0A\00", align 1
@RADEON_VM_PAGE_SNOOPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"only supported snooped mapping for now\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported operation %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RADEON_VA_RESULT_VA_EXIST = common dso_local global i32 0, align 4
@RADEON_VA_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_va_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_va*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca %struct.radeon_fpriv*, align 8
  %12 = alloca %struct.radeon_bo*, align 8
  %13 = alloca %struct.radeon_bo_va*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_va*
  store %struct.drm_radeon_gem_va* %17, %struct.drm_radeon_gem_va** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %10, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %22, align 8
  store %struct.radeon_fpriv* %23, %struct.radeon_fpriv** %11, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %233

36:                                               ; preds = %3
  %37 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %38 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %45 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %233

48:                                               ; preds = %36
  %49 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %50 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RADEON_VA_RESERVED_SIZE, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %60 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RADEON_VA_RESERVED_SIZE, align 8
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %67 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %233

70:                                               ; preds = %48
  %71 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %72 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %75 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %70
  %81 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %86 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %93 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %233

96:                                               ; preds = %70
  %97 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %98 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @RADEON_VM_PAGE_SNOOPED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %96
  %104 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %112 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %233

115:                                              ; preds = %96
  %116 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %117 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %120 [
    i32 129, label %119
    i32 128, label %119
  ]

119:                                              ; preds = %115, %115
  br label %135

120:                                              ; preds = %115
  %121 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %122 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %126 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %132 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %233

135:                                              ; preds = %119
  %136 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %137 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %138 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %139 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %136, %struct.drm_file* %137, i32 %140)
  store %struct.drm_gem_object* %141, %struct.drm_gem_object** %9, align 8
  %142 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %143 = icmp eq %struct.drm_gem_object* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %135
  %145 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %148 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @ENOENT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %233

151:                                              ; preds = %135
  %152 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %153 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %152)
  store %struct.radeon_bo* %153, %struct.radeon_bo** %12, align 8
  %154 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %155 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %154, i32 0)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %151
  %159 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %162 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %164 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %163)
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %4, align 4
  br label %233

166:                                              ; preds = %151
  %167 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %11, align 8
  %168 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %167, i32 0, i32 0
  %169 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %170 = call %struct.radeon_bo_va* @radeon_vm_bo_find(i32* %168, %struct.radeon_bo* %169)
  store %struct.radeon_bo_va* %170, %struct.radeon_bo_va** %13, align 8
  %171 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %172 = icmp ne %struct.radeon_bo_va* %171, null
  br i1 %172, label %182, label %173

173:                                              ; preds = %166
  %174 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %177 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %179 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %178)
  %180 = load i32, i32* @ENOENT, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %233

182:                                              ; preds = %166
  %183 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %184 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %214 [
    i32 129, label %186
    i32 128, label %210
  ]

186:                                              ; preds = %182
  %187 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %188 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = load i32, i32* @RADEON_VA_RESULT_VA_EXIST, align 4
  %193 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %194 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %196 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %199 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  br label %227

200:                                              ; preds = %186
  %201 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %202 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %203 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %204 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %207 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @radeon_vm_bo_set_addr(%struct.radeon_device* %201, %struct.radeon_bo_va* %202, i64 %205, i32 %208)
  store i32 %209, i32* %15, align 4
  br label %215

210:                                              ; preds = %182
  %211 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %212 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %213 = call i32 @radeon_vm_bo_set_addr(%struct.radeon_device* %211, %struct.radeon_bo_va* %212, i64 0, i32 0)
  store i32 %213, i32* %15, align 4
  br label %215

214:                                              ; preds = %182
  br label %215

215:                                              ; preds = %214, %210, %200
  %216 = load i32, i32* @RADEON_VA_RESULT_OK, align 4
  %217 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %218 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %215
  %222 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %225 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %221, %215
  br label %227

227:                                              ; preds = %226, %191
  %228 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %229 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %228)
  %230 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %231 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %230)
  %232 = load i32, i32* %15, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %227, %173, %158, %144, %120, %103, %80, %54, %41, %29
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(i32*, %struct.radeon_bo*) #1

declare dso_local i32 @radeon_vm_bo_set_addr(%struct.radeon_device*, %struct.radeon_bo_va*, i64, i32) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
