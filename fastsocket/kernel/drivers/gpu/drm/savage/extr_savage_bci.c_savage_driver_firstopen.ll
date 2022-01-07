; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_driver_firstopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_driver_firstopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }

@SAVAGE_FB_SIZE_S3 = common dso_local global i64 0, align 8
@SAVAGE_APERTURE_OFFSET = common dso_local global i64 0, align 8
@DRM_MTRR_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"strange pci_resource_len %08llx\0A\00", align 1
@S3_SUPERSAVAGE = common dso_local global i64 0, align 8
@S3_SAVAGE2000 = common dso_local global i64 0, align 8
@SAVAGE_FB_SIZE_S4 = common dso_local global i64 0, align 8
@SAVAGE_MMIO_SIZE = common dso_local global i64 0, align 8
@_DRM_REGISTERS = common dso_local global i32 0, align 4
@_DRM_READ_ONLY = common dso_local global i32 0, align 4
@_DRM_FRAME_BUFFER = common dso_local global i32 0, align 4
@_DRM_WRITE_COMBINING = common dso_local global i32 0, align 4
@SAVAGE_APERTURE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @savage_driver_firstopen(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @S3_SAVAGE3D_SERIES(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %156

35:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @pci_resource_start(i32 %38, i32 0)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* @SAVAGE_FB_SIZE_S3, align 8
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @SAVAGE_FB_SIZE_S3, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %5, align 8
  store i32 0, i32* %10, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @SAVAGE_APERTURE_OFFSET, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_resource_len(i32 %49, i32 0)
  %51 = icmp eq i32 %50, 134217728
  br i1 %51, label %52, label %148

52:                                               ; preds = %35
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 %53, i64* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 16777216, i32* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DRM_MTRR_WC, align 4
  %77 = call i8* @drm_mtrr_add(i64 %69, i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 33554432
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i64 %85, i64* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  store i32 33554432, i32* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DRM_MTRR_WC, align 4
  %109 = call i8* @drm_mtrr_add(i64 %101, i32 %107, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, 67108864
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i64 %117, i64* %122, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 67108864, i32* %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @DRM_MTRR_WC, align 4
  %141 = call i8* @drm_mtrr_add(i64 %133, i32 %139, i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  br label %155

148:                                              ; preds = %35
  %149 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %150 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @pci_resource_len(i32 %151, i32 0)
  %153 = sext i32 %152 to i64
  %154 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %148, %52
  br label %245

156:                                              ; preds = %1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @S3_SUPERSAVAGE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %226

162:                                              ; preds = %156
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @S3_SAVAGE2000, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %226

168:                                              ; preds = %162
  %169 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %170 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @pci_resource_start(i32 %171, i32 0)
  store i64 %172, i64* %5, align 8
  store i32 1, i32* %9, align 4
  %173 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %174 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @pci_resource_start(i32 %175, i32 1)
  store i64 %176, i64* %6, align 8
  %177 = load i64, i64* @SAVAGE_FB_SIZE_S4, align 8
  store i64 %177, i64* %7, align 8
  store i32 1, i32* %10, align 4
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @SAVAGE_APERTURE_OFFSET, align 8
  %180 = add i64 %178, %179
  store i64 %180, i64* %8, align 8
  %181 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %182 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @pci_resource_len(i32 %183, i32 1)
  %185 = icmp eq i32 %184, 134217728
  br i1 %185, label %186, label %218

186:                                              ; preds = %168
  %187 = load i64, i64* %6, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  store i64 %187, i64* %192, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  store i32 134217728, i32* %197, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @DRM_MTRR_WC, align 4
  %211 = call i8* @drm_mtrr_add(i64 %203, i32 %209, i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  store i32 %212, i32* %217, align 8
  br label %225

218:                                              ; preds = %168
  %219 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %220 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @pci_resource_len(i32 %221, i32 1)
  %223 = sext i32 %222 to i64
  %224 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %223)
  br label %225

225:                                              ; preds = %218, %186
  br label %244

226:                                              ; preds = %162, %156
  %227 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %228 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @pci_resource_start(i32 %229, i32 0)
  store i64 %230, i64* %5, align 8
  store i32 1, i32* %9, align 4
  %231 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %232 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @pci_resource_start(i32 %233, i32 1)
  store i64 %234, i64* %6, align 8
  %235 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %236 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @pci_resource_len(i32 %237, i32 1)
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %7, align 8
  store i32 2, i32* %10, align 4
  %240 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %241 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i64 @pci_resource_start(i32 %242, i32 2)
  store i64 %243, i64* %8, align 8
  br label %244

244:                                              ; preds = %226, %225
  br label %245

245:                                              ; preds = %244, %155
  %246 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %247 = load i64, i64* %5, align 8
  %248 = load i64, i64* @SAVAGE_MMIO_SIZE, align 8
  %249 = load i32, i32* @_DRM_REGISTERS, align 4
  %250 = load i32, i32* @_DRM_READ_ONLY, align 4
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = call i32 @drm_addmap(%struct.drm_device* %246, i64 %247, i64 %248, i32 %249, i32 %250, i32* %252)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %245
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %2, align 4
  br label %281

258:                                              ; preds = %245
  %259 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %260 = load i64, i64* %6, align 8
  %261 = load i64, i64* %7, align 8
  %262 = load i32, i32* @_DRM_FRAME_BUFFER, align 4
  %263 = load i32, i32* @_DRM_WRITE_COMBINING, align 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 2
  %266 = call i32 @drm_addmap(%struct.drm_device* %259, i64 %260, i64 %261, i32 %262, i32 %263, i32* %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %258
  %270 = load i32, i32* %11, align 4
  store i32 %270, i32* %2, align 4
  br label %281

271:                                              ; preds = %258
  %272 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %273 = load i64, i64* %8, align 8
  %274 = load i64, i64* @SAVAGE_APERTURE_SIZE, align 8
  %275 = load i32, i32* @_DRM_FRAME_BUFFER, align 4
  %276 = load i32, i32* @_DRM_WRITE_COMBINING, align 4
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = call i32 @drm_addmap(%struct.drm_device* %272, i64 %273, i64 %274, i32 %275, i32 %276, i32* %278)
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %2, align 4
  br label %281

281:                                              ; preds = %271, %269, %256
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local i64 @S3_SAVAGE3D_SERIES(i64) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i8* @drm_mtrr_add(i64, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @drm_addmap(%struct.drm_device*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
