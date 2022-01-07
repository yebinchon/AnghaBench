; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@DSPARB = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@BLC_PWM_CPU_CTL = common dso_local global i32 0, align 4
@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@PCH_LVDS = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BLC_HIST_CTL = common dso_local global i32 0, align 4
@BLC_PWM_CTL2 = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@PCH_PP_ON_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_OFF_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_DIVISOR = common dso_local global i32 0, align 4
@PP_ON_DELAYS = common dso_local global i32 0, align 4
@PP_OFF_DELAYS = common dso_local global i32 0, align 4
@PP_DIVISOR = common dso_local global i32 0, align 4
@ILK_DPFC_CB_BASE = common dso_local global i32 0, align 4
@DPFC_CB_BASE = common dso_local global i32 0, align 4
@FBC_CFB_BASE = common dso_local global i32 0, align 4
@FBC_LL_BASE = common dso_local global i32 0, align 4
@FBC_CONTROL2 = common dso_local global i32 0, align 4
@FBC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i915_save_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_save_display(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @DSPARB, align 4
  %14 = call i8* @I915_READ(i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 17
  store i8* %14, i8** %17, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = load i32, i32* @DRIVER_MODESET, align 4
  %21 = call i32 @drm_core_check_feature(%struct.drm_device* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = call i32 @i915_save_display_reg(%struct.drm_device* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i32, i32* @PCH_PP_CONTROL, align 4
  %32 = call i8* @I915_READ(i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 14
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %37 = call i8* @I915_READ(i32 %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 12
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %42 = call i8* @I915_READ(i32 %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 10
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @BLC_PWM_CPU_CTL, align 4
  %47 = call i8* @I915_READ(i32 %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 16
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %52 = call i8* @I915_READ(i32 %51)
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 15
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @PCH_LVDS, align 4
  %57 = call i8* @I915_READ(i32 %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  store i8* %57, i8** %60, align 8
  br label %108

61:                                               ; preds = %26
  %62 = load i32, i32* @PP_CONTROL, align 4
  %63 = call i8* @I915_READ(i32 %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 14
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %68 = call i8* @I915_READ(i32 %67)
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 13
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* @BLC_PWM_CTL, align 4
  %73 = call i8* @I915_READ(i32 %72)
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 12
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* @BLC_HIST_CTL, align 4
  %78 = call i8* @I915_READ(i32 %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 11
  store i8* %78, i8** %81, align 8
  %82 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %83 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %93

87:                                               ; preds = %61
  %88 = load i32, i32* @BLC_PWM_CTL2, align 4
  %89 = call i8* @I915_READ(i32 %88)
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 10
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %87, %61
  %94 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %95 = call i64 @IS_MOBILE(%struct.drm_device* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %99 = call i32 @IS_I830(%struct.drm_device* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @LVDS, align 4
  %103 = call i8* @I915_READ(i32 %102)
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %105 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 9
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %97, %93
  br label %108

108:                                              ; preds = %107, %30
  %109 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %110 = call i32 @IS_I830(%struct.drm_device* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %108
  %113 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %114 = call i32 @IS_845G(%struct.drm_device* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %112
  %117 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %118 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @PFIT_CONTROL, align 4
  %122 = call i8* @I915_READ(i32 %121)
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 8
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %120, %116, %112, %108
  %127 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %128 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load i32, i32* @PCH_PP_ON_DELAYS, align 4
  %132 = call i8* @I915_READ(i32 %131)
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %134 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 7
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* @PCH_PP_OFF_DELAYS, align 4
  %137 = call i8* @I915_READ(i32 %136)
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %139 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  store i8* %137, i8** %140, align 8
  %141 = load i32, i32* @PCH_PP_DIVISOR, align 4
  %142 = call i8* @I915_READ(i32 %141)
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %144 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  store i8* %142, i8** %145, align 8
  br label %162

146:                                              ; preds = %126
  %147 = load i32, i32* @PP_ON_DELAYS, align 4
  %148 = call i8* @I915_READ(i32 %147)
  %149 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %150 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 7
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* @PP_OFF_DELAYS, align 4
  %153 = call i8* @I915_READ(i32 %152)
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %155 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 6
  store i8* %153, i8** %156, align 8
  %157 = load i32, i32* @PP_DIVISOR, align 4
  %158 = call i8* @I915_READ(i32 %157)
  %159 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %160 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  store i8* %158, i8** %161, align 8
  br label %162

162:                                              ; preds = %146, %130
  %163 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %164 = call i64 @I915_HAS_FBC(%struct.drm_device* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %209

166:                                              ; preds = %162
  %167 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %168 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32, i32* @ILK_DPFC_CB_BASE, align 4
  %172 = call i8* @I915_READ(i32 %171)
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  store i8* %172, i8** %175, align 8
  br label %208

176:                                              ; preds = %166
  %177 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %178 = call i64 @IS_GM45(%struct.drm_device* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* @DPFC_CB_BASE, align 4
  %182 = call i8* @I915_READ(i32 %181)
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %184 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  store i8* %182, i8** %185, align 8
  br label %207

186:                                              ; preds = %176
  %187 = load i32, i32* @FBC_CFB_BASE, align 4
  %188 = call i8* @I915_READ(i32 %187)
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 3
  store i8* %188, i8** %191, align 8
  %192 = load i32, i32* @FBC_LL_BASE, align 4
  %193 = call i8* @I915_READ(i32 %192)
  %194 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %195 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  store i8* %193, i8** %196, align 8
  %197 = load i32, i32* @FBC_CONTROL2, align 4
  %198 = call i8* @I915_READ(i32 %197)
  %199 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %200 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  store i8* %198, i8** %201, align 8
  %202 = load i32, i32* @FBC_CONTROL, align 4
  %203 = call i8* @I915_READ(i32 %202)
  %204 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %205 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  br label %207

207:                                              ; preds = %186, %180
  br label %208

208:                                              ; preds = %207, %170
  br label %209

209:                                              ; preds = %208, %162
  %210 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %211 = load i32, i32* @DRIVER_MODESET, align 4
  %212 = call i32 @drm_core_check_feature(%struct.drm_device* %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %216 = call i32 @i915_save_vga(%struct.drm_device* %215)
  br label %217

217:                                              ; preds = %214, %209
  ret void
}

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @i915_save_display_reg(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_device*) #1

declare dso_local i32 @IS_I830(%struct.drm_device*) #1

declare dso_local i32 @IS_845G(%struct.drm_device*) #1

declare dso_local i64 @I915_HAS_FBC(%struct.drm_device*) #1

declare dso_local i64 @IS_GM45(%struct.drm_device*) #1

declare dso_local i32 @i915_save_vga(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
