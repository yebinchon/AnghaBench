; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_drm = type { i32, %struct.nouveau_display* }
%struct.nouveau_display = type { i32 (%struct.drm_device.0*)*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.drm_device.0 = type opaque
%struct.TYPE_6__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NV_50 = common dso_local global i64 0, align 8
@NV_D0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"dithering mode\00", align 1
@dither_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"dithering depth\00", align 1
@dither_depth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"underscan\00", align 1
@underscan = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"underscan hborder\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"underscan vborder\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"vibrant hue\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"color vibrance\00", align 1
@nouveau_mode_config_funcs = common dso_local global i32 0, align 4
@NV_10 = common dso_local global i64 0, align 8
@nouveau_modeset = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_VGA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_display_create(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_display*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nouveau_display* @kzalloc(i32 56, i32 %18)
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 1
  store %struct.nouveau_display* %19, %struct.nouveau_display** %21, align 8
  store %struct.nouveau_display* %19, %struct.nouveau_display** %5, align 8
  %22 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %23 = icmp ne %struct.nouveau_display* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %222

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @drm_mode_config_init(%struct.drm_device* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = call i32 @drm_mode_create_scaling_mode_property(%struct.drm_device* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = call i32 @drm_mode_create_dvi_i_properties(%struct.drm_device* %32)
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_6__* @nv_device(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NV_50, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %55

43:                                               ; preds = %27
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_6__* @nv_device(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NV_D0, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %54

53:                                               ; preds = %43
  store i32 2, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %57 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @dither_mode, align 4
  %61 = call i32 @PROP_ENUM(i32 %58, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %63 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @dither_depth, align 4
  %67 = call i32 @PROP_ENUM(i32 %64, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @underscan, align 4
  %73 = call i32 @PROP_ENUM(i32 %70, i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %75 = call i8* @drm_property_create_range(%struct.drm_device* %74, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 128)
  %76 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %77 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = call i8* @drm_property_create_range(%struct.drm_device* %78, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 128)
  %80 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %81 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 1
  br i1 %83, label %84, label %93

84:                                               ; preds = %55
  %85 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %86 = call i8* @drm_property_create_range(%struct.drm_device* %85, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 180)
  %87 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %88 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %90 = call i8* @drm_property_create_range(%struct.drm_device* %89, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 200)
  %91 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %92 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %84, %55
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  store i32* @nouveau_mode_config_funcs, i32** %96, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @pci_resource_start(%struct.TYPE_5__* %99, i32 1)
  %101 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 7
  store i32 %100, i32* %103, align 8
  %104 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  store i64 0, i64* %109, align 8
  %110 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %111 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_6__* @nv_device(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NV_10, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %93
  %119 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %120 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 2048, i32* %121, align 8
  %122 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 2048, i32* %124, align 4
  br label %149

125:                                              ; preds = %93
  %126 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %127 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_6__* @nv_device(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NV_50, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %136 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 4096, i32* %137, align 8
  %138 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %139 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 4096, i32* %140, align 4
  br label %148

141:                                              ; preds = %125
  %142 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %143 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 8192, i32* %144, align 8
  %145 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %146 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 8192, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %134
  br label %149

149:                                              ; preds = %148, %118
  %150 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %151 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i32 24, i32* %152, align 8
  %153 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %154 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  store i32 1, i32* %155, align 4
  %156 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %157 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %156)
  %158 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %159 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %158)
  %160 = load i32, i32* @nouveau_modeset, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %169, label %162

162:                                              ; preds = %149
  %163 = load i32, i32* @nouveau_modeset, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %208

165:                                              ; preds = %162
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @PCI_CLASS_DISPLAY_VGA, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %165, %149
  %170 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %171 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.TYPE_6__* @nv_device(i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @NV_50, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %180 = call i32 @nv04_display_create(%struct.drm_device* %179)
  store i32 %180, i32* %7, align 4
  br label %184

181:                                              ; preds = %169
  %182 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %183 = call i32 @nv50_display_create(%struct.drm_device* %182)
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %216

188:                                              ; preds = %184
  %189 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %190 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %188
  %195 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %196 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %197 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @drm_vblank_init(%struct.drm_device* %195, i64 %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %209

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %188
  %206 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %207 = call i32 @nouveau_backlight_init(%struct.drm_device* %206)
  br label %208

208:                                              ; preds = %205, %165, %162
  store i32 0, i32* %2, align 4
  br label %222

209:                                              ; preds = %203
  %210 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %211 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %210, i32 0, i32 0
  %212 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %211, align 8
  %213 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %214 = bitcast %struct.drm_device* %213 to %struct.drm_device.0*
  %215 = call i32 %212(%struct.drm_device.0* %214)
  br label %216

216:                                              ; preds = %209, %187
  %217 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %218 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %217)
  %219 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %220 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %219)
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %216, %208, %24
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_display* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_scaling_mode_property(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_dvi_i_properties(%struct.drm_device*) #1

declare dso_local %struct.TYPE_6__* @nv_device(i32) #1

declare dso_local i32 @PROP_ENUM(i32, i32, i8*, i32) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @nv04_display_create(%struct.drm_device*) #1

declare dso_local i32 @nv50_display_create(%struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i64) #1

declare dso_local i32 @nouveau_backlight_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
