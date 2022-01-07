; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_volt.c_nouveau_volt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_volt.c_nouveau_volt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios, i32 }
%struct.nvbios = type { i64, i32*, i32 }
%struct.nouveau_gpio = type { i64 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func*)* }
%struct.dcb_gpio_func = type opaque
%struct.nouveau_pm = type { %struct.nouveau_pm_voltage }
%struct.nouveau_pm_voltage = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dcb_gpio_func.0 = type { i32 }
%struct.bit_entry = type { i32, i32* }

@NVBIOS_BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unknown volt for BIT P %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"BMP version too old for voltage\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"voltage table pointer invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"voltage table 0x%02x unknown\0A\00", align 1
@nr_vidtag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"vid bit %d unknown\0A\00", align 1
@vidtag = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"vid bit %d has no gpio tag\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_volt_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_gpio*, align 8
  %5 = alloca %struct.nouveau_pm*, align 8
  %6 = alloca %struct.nouveau_pm_voltage*, align 8
  %7 = alloca %struct.nvbios*, align 8
  %8 = alloca %struct.dcb_gpio_func.0, align 4
  %9 = alloca %struct.bit_entry, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %21)
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %3, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.nouveau_gpio* @nouveau_gpio(i32 %25)
  store %struct.nouveau_gpio* %26, %struct.nouveau_gpio** %4, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %27)
  store %struct.nouveau_pm* %28, %struct.nouveau_pm** %5, align 8
  %29 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %29, i32 0, i32 0
  store %struct.nouveau_pm_voltage* %30, %struct.nouveau_pm_voltage** %6, align 8
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 0
  store %struct.nvbios* %32, %struct.nvbios** %7, align 8
  store i32* null, i32** %10, align 8
  %33 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %34 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NVBIOS_BIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %1
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = call i64 @bit_table(%struct.drm_device* %39, i8 signext 80, %struct.bit_entry* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %341

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %49 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @ROMPTR(%struct.drm_device* %48, i32 %52)
  store i32* %53, i32** %10, align 8
  br label %71

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @ROMPTR(%struct.drm_device* %59, i32 %63)
  store i32* %64, i32** %10, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %67 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @NV_WARN(%struct.nouveau_drm* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %47
  br label %100

72:                                               ; preds = %1
  %73 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %74 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %77 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 6
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 39
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %86 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %341

87:                                               ; preds = %72
  %88 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %89 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %90 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %93 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 152
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @ROMPTR(%struct.drm_device* %88, i32 %98)
  store i32* %99, i32** %10, align 8
  br label %100

100:                                              ; preds = %87, %71
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %105 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %341

106:                                              ; preds = %100
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %159 [
    i32 16, label %110
    i32 17, label %110
    i32 18, label %110
    i32 32, label %120
    i32 48, label %133
    i32 64, label %146
  ]

110:                                              ; preds = %106, %106, %106
  store i32 5, i32* %13, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %14, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %16, align 4
  br label %165

120:                                              ; preds = %106
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %13, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %14, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %16, align 4
  br label %165

133:                                              ; preds = %106
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %13, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %14, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %15, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %165

146:                                              ; preds = %106
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %13, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %14, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %15, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 11
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %165

159:                                              ; preds = %106
  %160 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @NV_WARN(%struct.nouveau_drm* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %341

165:                                              ; preds = %146, %133, %120, %110
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %168 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %170 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %165
  br label %341

174:                                              ; preds = %165
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %206, %174
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @nr_vidtag, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %183, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  br label %341

186:                                              ; preds = %178
  %187 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %188 = icmp ne %struct.nouveau_gpio* %187, null
  br i1 %188, label %189, label %206

189:                                              ; preds = %186
  %190 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %191 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %190, i32 0, i32 0
  %192 = load i64 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func*)*, i64 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func*)** %191, align 8
  %193 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %194 = load i32*, i32** @vidtag, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = bitcast %struct.dcb_gpio_func.0* %8 to %struct.dcb_gpio_func*
  %200 = call i64 %192(%struct.nouveau_gpio* %193, i32 0, i32 %198, i32 255, %struct.dcb_gpio_func* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %341

206:                                              ; preds = %189, %186
  %207 = load i32, i32* %16, align 4
  %208 = ashr i32 %207, 1
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %175

211:                                              ; preds = %175
  %212 = load i32*, i32** %10, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %216 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %218 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %219, 64
  br i1 %220, label %221, label %277

221:                                              ; preds = %211
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %224 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @GFP_KERNEL, align 4
  %227 = call i8* @kcalloc(i32 %225, i32 8, i32 %226)
  %228 = bitcast i8* %227 to %struct.TYPE_2__*
  %229 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %230 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %229, i32 0, i32 4
  store %struct.TYPE_2__* %228, %struct.TYPE_2__** %230, align 8
  %231 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %232 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %231, i32 0, i32 4
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = icmp ne %struct.TYPE_2__* %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %221
  br label %341

236:                                              ; preds = %221
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32* %240, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %241

241:                                              ; preds = %269, %236
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %276

245:                                              ; preds = %241
  %246 = load i32*, i32** %11, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %248, 10000
  %250 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %251 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %250, i32 0, i32 4
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  store i32 %249, i32* %256, align 4
  %257 = load i32*, i32** %11, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %17, align 4
  %261 = ashr i32 %259, %260
  %262 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %263 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %262, i32 0, i32 4
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  store i32 %261, i32* %268, align 4
  br label %269

269:                                              ; preds = %245
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %12, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32*, i32** %11, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %11, align 8
  br label %241

276:                                              ; preds = %241
  br label %338

277:                                              ; preds = %211
  %278 = load i32*, i32** %10, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 4
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @ROM32(i32 %280)
  store i32 %281, i32* %18, align 4
  %282 = load i32*, i32** %10, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 8
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @ROM16(i32 %284)
  store i64 %285, i64* %19, align 8
  %286 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %287 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  %290 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %291 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  %292 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %293 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @GFP_KERNEL, align 4
  %296 = call i8* @kcalloc(i32 %294, i32 8, i32 %295)
  %297 = bitcast i8* %296 to %struct.TYPE_2__*
  %298 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %299 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %298, i32 0, i32 4
  store %struct.TYPE_2__* %297, %struct.TYPE_2__** %299, align 8
  %300 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %301 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %300, i32 0, i32 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = icmp ne %struct.TYPE_2__* %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %277
  br label %341

305:                                              ; preds = %277
  store i32 0, i32* %20, align 4
  br label %306

306:                                              ; preds = %334, %305
  %307 = load i32, i32* %20, align 4
  %308 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %309 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp sle i32 %307, %310
  br i1 %311, label %312, label %337

312:                                              ; preds = %306
  %313 = load i32, i32* %18, align 4
  %314 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %315 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %314, i32 0, i32 4
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = load i32, i32* %20, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  store i32 %313, i32* %320, align 4
  %321 = load i32, i32* %20, align 4
  %322 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %323 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %322, i32 0, i32 4
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 1
  store i32 %321, i32* %328, align 4
  %329 = load i64, i64* %19, align 8
  %330 = load i32, i32* %18, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %18, align 4
  br label %334

334:                                              ; preds = %312
  %335 = load i32, i32* %20, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %20, align 4
  br label %306

337:                                              ; preds = %306
  br label %338

338:                                              ; preds = %337, %276
  %339 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %6, align 8
  %340 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %339, i32 0, i32 3
  store i32 1, i32* %340, align 4
  br label %341

341:                                              ; preds = %338, %304, %235, %202, %182, %173, %159, %103, %84, %42
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(i32) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i64 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32* @ROMPTR(%struct.drm_device*, i32) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i64 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
