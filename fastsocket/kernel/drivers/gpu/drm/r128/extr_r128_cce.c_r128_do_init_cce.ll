; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_cce.c_r128_do_init_cce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_cce.c_r128_do_init_cce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i8*, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_16__, i64, %struct.TYPE_20__*, %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_16__ = type { i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"called when already initialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PCI GART memory not allocated!\0A\00", align 1
@R128_MAX_USEC_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"TIMEOUT problem!\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Bad cce_mode!\0A\00", align 1
@R128_DATATYPE_RGB565 = common dso_local global i8* null, align 8
@R128_DATATYPE_ARGB8888 = common dso_local global i8* null, align 8
@R128_DST_TILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"could not find sarea!\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"could not find mmio region!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"could not find cce ring region!\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"could not find ring read pointer!\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"could not find dma buffer region!\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"could not find agp texture region!\0A\00", align 1
@R128_LAST_FRAME_REG = common dso_local global i32 0, align 4
@R128_LAST_DISPATCH_REG = common dso_local global i32 0, align 4
@DRM_ATI_GART_MAIN = common dso_local global i32 0, align 4
@R128_PCIGART_TABLE_SIZE = common dso_local global i32 0, align 4
@DRM_ATI_GART_PCI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to init PCI GART!\0A\00", align 1
@R128_PCI_GART_PAGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_22__*)* @r128_do_init_cce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_do_init_cce(%struct.drm_device* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %8 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %573

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_21__* @kzalloc(i32 216, i32 %18)
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %6, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = icmp eq %struct.TYPE_21__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %573

25:                                               ; preds = %17
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 18
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 16
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 16
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %25
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = bitcast %struct.TYPE_21__* %42 to i8*
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %573

50:                                               ; preds = %35, %25
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @R128_MAX_USEC_TIMEOUT, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60, %50
  %67 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = bitcast %struct.TYPE_21__* %68 to i8*
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %573

76:                                               ; preds = %60
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 26
  %84 = call i32 @atomic_set(i32* %83, i32 0)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 135
  br i1 %88, label %89, label %114

89:                                               ; preds = %76
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 137
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 133
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 132
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = bitcast %struct.TYPE_21__* %106 to i8*
  %108 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %111 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %573

114:                                              ; preds = %99, %94, %89, %76
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %130 [
    i32 128, label %118
    i32 134, label %121
    i32 135, label %121
    i32 136, label %124
    i32 137, label %124
    i32 131, label %127
    i32 133, label %127
    i32 130, label %127
    i32 132, label %127
    i32 129, label %127
  ]

118:                                              ; preds = %114
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  store i32 0, i32* %120, align 8
  br label %130

121:                                              ; preds = %114, %114
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  store i32 192, i32* %123, align 8
  br label %130

124:                                              ; preds = %114, %114
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  store i32 128, i32* %126, align 8
  br label %130

127:                                              ; preds = %114, %114, %114, %114, %114
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 2
  store i32 64, i32* %129, align 8
  br label %130

130:                                              ; preds = %114, %127, %124, %121, %118
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %139 [
    i32 16, label %134
    i32 32, label %138
  ]

134:                                              ; preds = %130
  %135 = load i8*, i8** @R128_DATATYPE_RGB565, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 25
  store i8* %135, i8** %137, align 8
  br label %143

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %130, %138
  %140 = load i8*, i8** @R128_DATATYPE_ARGB8888, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 25
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %139, %134
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %172 [
    i32 16, label %167
    i32 24, label %171
    i32 32, label %171
  ]

167:                                              ; preds = %143
  %168 = load i8*, i8** @R128_DATATYPE_RGB565, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 24
  store i8* %168, i8** %170, align 8
  br label %176

171:                                              ; preds = %143, %143
  br label %172

172:                                              ; preds = %143, %171
  %173 = load i8*, i8** @R128_DATATYPE_ARGB8888, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 24
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %172, %167
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = sdiv i32 %194, 8
  %196 = shl i32 %195, 21
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 5
  %201 = or i32 %196, %200
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = sdiv i32 %206, 8
  %208 = shl i32 %207, 21
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 5
  %213 = or i32 %208, %212
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 11
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 8
  %219 = sdiv i32 %218, 8
  %220 = shl i32 %219, 21
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 5
  %225 = or i32 %220, %224
  %226 = load i32, i32* @R128_DST_TILE, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 8
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 8
  %233 = sdiv i32 %232, 8
  %234 = shl i32 %233, 21
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = ashr i32 %237, 5
  %239 = or i32 %234, %238
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 13
  store i32 %239, i32* %241, align 4
  %242 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %243 = call %struct.TYPE_14__* @drm_getsarea(%struct.drm_device* %242)
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 21
  store %struct.TYPE_14__* %243, %struct.TYPE_14__** %245, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 21
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = icmp ne %struct.TYPE_14__* %248, null
  br i1 %249, label %260, label %250

250:                                              ; preds = %176
  %251 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %253 = bitcast %struct.TYPE_21__* %252 to i8*
  %254 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %255 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %257 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %256)
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %3, align 4
  br label %573

260:                                              ; preds = %176
  %261 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 17
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @drm_core_findmap(%struct.drm_device* %261, i32 %264)
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 23
  store i8* %265, i8** %267, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 23
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %282, label %272

272:                                              ; preds = %260
  %273 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %275 = bitcast %struct.TYPE_21__* %274 to i8*
  %276 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %277 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %276, i32 0, i32 0
  store i8* %275, i8** %277, align 8
  %278 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %279 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %278)
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %3, align 4
  br label %573

282:                                              ; preds = %260
  %283 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 16
  %286 = load i32, i32* %285, align 8
  %287 = call i8* @drm_core_findmap(%struct.drm_device* %283, i32 %286)
  %288 = bitcast i8* %287 to %struct.TYPE_15__*
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 19
  store %struct.TYPE_15__* %288, %struct.TYPE_15__** %290, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 19
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %292, align 8
  %294 = icmp ne %struct.TYPE_15__* %293, null
  br i1 %294, label %305, label %295

295:                                              ; preds = %282
  %296 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %298 = bitcast %struct.TYPE_21__* %297 to i8*
  %299 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %300 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  %301 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %302 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %301)
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %3, align 4
  br label %573

305:                                              ; preds = %282
  %306 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 15
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @drm_core_findmap(%struct.drm_device* %306, i32 %309)
  %311 = bitcast i8* %310 to %struct.TYPE_15__*
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 20
  store %struct.TYPE_15__* %311, %struct.TYPE_15__** %313, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 20
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %315, align 8
  %317 = icmp ne %struct.TYPE_15__* %316, null
  br i1 %317, label %328, label %318

318:                                              ; preds = %305
  %319 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %321 = bitcast %struct.TYPE_21__* %320 to i8*
  %322 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %323 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %322, i32 0, i32 0
  store i8* %321, i8** %323, align 8
  %324 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %325 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %324)
  %326 = load i32, i32* @EINVAL, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %3, align 4
  br label %573

328:                                              ; preds = %305
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 14
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %333 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %332, i32 0, i32 4
  store i32 %331, i32* %333, align 8
  %334 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 14
  %337 = load i32, i32* %336, align 8
  %338 = call i8* @drm_core_findmap(%struct.drm_device* %334, i32 %337)
  %339 = bitcast i8* %338 to %struct.TYPE_15__*
  %340 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %341 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %340, i32 0, i32 3
  store %struct.TYPE_15__* %339, %struct.TYPE_15__** %341, align 8
  %342 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %343 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %342, i32 0, i32 3
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %343, align 8
  %345 = icmp ne %struct.TYPE_15__* %344, null
  br i1 %345, label %356, label %346

346:                                              ; preds = %328
  %347 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %349 = bitcast %struct.TYPE_21__* %348 to i8*
  %350 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %351 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %350, i32 0, i32 0
  store i8* %349, i8** %351, align 8
  %352 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %353 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %352)
  %354 = load i32, i32* @EINVAL, align 4
  %355 = sub nsw i32 0, %354
  store i32 %355, i32* %3, align 4
  br label %573

356:                                              ; preds = %328
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 16
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %384, label %361

361:                                              ; preds = %356
  %362 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 13
  %365 = load i32, i32* %364, align 4
  %366 = call i8* @drm_core_findmap(%struct.drm_device* %362, i32 %365)
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 22
  store i8* %366, i8** %368, align 8
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 22
  %371 = load i8*, i8** %370, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %383, label %373

373:                                              ; preds = %361
  %374 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %376 = bitcast %struct.TYPE_21__* %375 to i8*
  %377 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %378 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %377, i32 0, i32 0
  store i8* %376, i8** %378, align 8
  %379 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %380 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %379)
  %381 = load i32, i32* @EINVAL, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %3, align 4
  br label %573

383:                                              ; preds = %361
  br label %384

384:                                              ; preds = %383, %356
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 21
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = inttoptr i64 %389 to i32*
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 11
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %390, i64 %394
  %396 = bitcast i32* %395 to %struct.TYPE_20__*
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 17
  store %struct.TYPE_20__* %396, %struct.TYPE_20__** %398, align 8
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 19
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = inttoptr i64 %403 to i8*
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 19
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 0
  store i8* %404, i8** %408, align 8
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 20
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = inttoptr i64 %413 to i8*
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 20
  %417 = load %struct.TYPE_15__*, %struct.TYPE_15__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %417, i32 0, i32 0
  store i8* %414, i8** %418, align 8
  %419 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %420 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %419, i32 0, i32 3
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = inttoptr i64 %423 to i8*
  %425 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %426 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %425, i32 0, i32 3
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 0
  store i8* %424, i8** %428, align 8
  %429 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %430 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %429, i32 0, i32 1
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 14
  store i64 %433, i64* %435, align 8
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 19
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 0
  %440 = load i8*, i8** %439, align 8
  %441 = bitcast i8* %440 to i32*
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 18
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 5
  store i32* %441, i32** %444, align 8
  %445 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 19
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = bitcast i8* %449 to i32*
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 12
  %453 = load i32, i32* %452, align 8
  %454 = sext i32 %453 to i64
  %455 = udiv i64 %454, 4
  %456 = getelementptr inbounds i32, i32* %450, i64 %455
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 18
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i32 0, i32 4
  store i32* %456, i32** %459, align 8
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 12
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 18
  %465 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %464, i32 0, i32 0
  store i32 %462, i32* %465, align 8
  %466 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %466, i32 0, i32 12
  %468 = load i32, i32* %467, align 8
  %469 = sdiv i32 %468, 8
  %470 = call i32 @drm_order(i32 %469)
  %471 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 18
  %473 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %472, i32 0, i32 3
  store i32 %470, i32* %473, align 4
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 18
  %476 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = sext i32 %477 to i64
  %479 = udiv i64 %478, 4
  %480 = sub i64 %479, 1
  %481 = trunc i64 %480 to i32
  %482 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %482, i32 0, i32 18
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 1
  store i32 %481, i32* %484, align 4
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 18
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %486, i32 0, i32 2
  store i32 128, i32* %487, align 8
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 17
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 1
  store i64 0, i64* %491, align 8
  %492 = load i32, i32* @R128_LAST_FRAME_REG, align 4
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %494 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %493, i32 0, i32 17
  %495 = load %struct.TYPE_20__*, %struct.TYPE_20__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = call i32 @R128_WRITE(i32 %492, i64 %497)
  %499 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %499, i32 0, i32 17
  %501 = load %struct.TYPE_20__*, %struct.TYPE_20__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i32 0, i32 0
  store i64 0, i64* %502, align 8
  %503 = load i32, i32* @R128_LAST_DISPATCH_REG, align 4
  %504 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %504, i32 0, i32 17
  %506 = load %struct.TYPE_20__*, %struct.TYPE_20__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = call i32 @R128_WRITE(i32 %503, i64 %508)
  %510 = call i32 @DMA_BIT_MASK(i32 32)
  %511 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %511, i32 0, i32 15
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %512, i32 0, i32 5
  store i32 %510, i32* %513, align 8
  %514 = load i32, i32* @DRM_ATI_GART_MAIN, align 4
  %515 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %516, i32 0, i32 4
  store i32 %514, i32* %517, align 4
  %518 = load i32, i32* @R128_PCIGART_TABLE_SIZE, align 4
  %519 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %520, i32 0, i32 3
  store i32 %518, i32* %521, align 8
  %522 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 2
  store i32* null, i32** %524, align 8
  %525 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %526 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %525, i32 0, i32 15
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 0
  store i64 0, i64* %527, align 8
  %528 = load i32, i32* @DRM_ATI_GART_PCI, align 4
  %529 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %529, i32 0, i32 15
  %531 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %530, i32 0, i32 1
  store i32 %528, i32* %531, align 8
  %532 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %533 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 15
  %535 = call i32 @drm_ati_pcigart_init(%struct.drm_device* %532, %struct.TYPE_16__* %534)
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %547, label %537

537:                                              ; preds = %384
  %538 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %539 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %540 = bitcast %struct.TYPE_21__* %539 to i8*
  %541 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %542 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %541, i32 0, i32 0
  store i8* %540, i8** %542, align 8
  %543 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %544 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %543)
  %545 = load i32, i32* @ENOMEM, align 4
  %546 = sub nsw i32 0, %545
  store i32 %546, i32* %3, align 4
  br label %573

547:                                              ; preds = %384
  %548 = load i32, i32* @R128_PCI_GART_PAGE, align 4
  %549 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %549, i32 0, i32 15
  %551 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = call i32 @R128_WRITE(i32 %548, i64 %552)
  %554 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %555 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %556 = call i32 @r128_cce_init_ring_buffer(%struct.drm_device* %554, %struct.TYPE_21__* %555)
  %557 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %558 = call i32 @r128_cce_load_microcode(%struct.TYPE_21__* %557)
  store i32 %558, i32* %7, align 4
  %559 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %560 = bitcast %struct.TYPE_21__* %559 to i8*
  %561 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %562 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %561, i32 0, i32 0
  store i8* %560, i8** %562, align 8
  %563 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %564 = call i32 @r128_do_engine_reset(%struct.drm_device* %563)
  %565 = load i32, i32* %7, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %571

567:                                              ; preds = %547
  %568 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %569 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %570 = call i32 @r128_do_cleanup_cce(%struct.drm_device* %569)
  br label %571

571:                                              ; preds = %567, %547
  %572 = load i32, i32* %7, align 4
  store i32 %572, i32* %3, align 4
  br label %573

573:                                              ; preds = %571, %537, %373, %346, %318, %295, %272, %250, %104, %66, %40, %22, %13
  %574 = load i32, i32* %3, align 4
  ret i32 %574
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.TYPE_21__* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @r128_do_cleanup_cce(%struct.drm_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @drm_getsarea(%struct.drm_device*) #1

declare dso_local i8* @drm_core_findmap(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_order(i32) #1

declare dso_local i32 @R128_WRITE(i32, i64) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @drm_ati_pcigart_init(%struct.drm_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @r128_cce_init_ring_buffer(%struct.drm_device*, %struct.TYPE_21__*) #1

declare dso_local i32 @r128_cce_load_microcode(%struct.TYPE_21__*) #1

declare dso_local i32 @r128_do_engine_reset(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
