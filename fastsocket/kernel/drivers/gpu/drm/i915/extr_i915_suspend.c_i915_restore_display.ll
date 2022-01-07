; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DSPARB = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@BLC_PWM_CTL2 = common dso_local global i32 0, align 4
@PCH_LVDS = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@BLC_PWM_CPU_CTL = common dso_local global i32 0, align 4
@PCH_PP_ON_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_OFF_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_DIVISOR = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@RSTDBYCTL = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BLC_HIST_CTL = common dso_local global i32 0, align 4
@PP_ON_DELAYS = common dso_local global i32 0, align 4
@PP_OFF_DELAYS = common dso_local global i32 0, align 4
@PP_DIVISOR = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@ILK_DPFC_CB_BASE = common dso_local global i32 0, align 4
@DPFC_CB_BASE = common dso_local global i32 0, align 4
@FBC_CFB_BASE = common dso_local global i32 0, align 4
@FBC_LL_BASE = common dso_local global i32 0, align 4
@FBC_CONTROL2 = common dso_local global i32 0, align 4
@FBC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i915_restore_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_restore_display(%struct.drm_device* %0) #0 {
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @DSPARB, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 18
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @I915_WRITE(i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = load i32, i32* @DRIVER_MODESET, align 4
  %22 = call i32 @drm_core_check_feature(%struct.drm_device* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i32 @i915_restore_display_reg(%struct.drm_device* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 4
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @BLC_PWM_CTL2, align 4
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @I915_WRITE(i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %37, %33, %27
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @PCH_LVDS, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 17
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @I915_WRITE(i32 %49, i32 %53)
  br label %71

55:                                               ; preds = %44
  %56 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %57 = call i64 @IS_MOBILE(%struct.drm_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %61 = call i32 @IS_I830(%struct.drm_device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @LVDS, align 4
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 17
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @I915_WRITE(i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %59, %55
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %73 = call i32 @IS_I830(%struct.drm_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %71
  %76 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %77 = call i32 @IS_845G(%struct.drm_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %81 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @PFIT_CONTROL, align 4
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @I915_WRITE(i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %83, %79, %75, %71
  %91 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %92 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %149

94:                                               ; preds = %90
  %95 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @I915_WRITE(i32 %95, i32 %99)
  %101 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %103 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @I915_WRITE(i32 %101, i32 %105)
  %107 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %109 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 14
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @I915_WRITE(i32 %107, i32 %111)
  %113 = load i32, i32* @BLC_PWM_CPU_CTL, align 4
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %115 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @I915_WRITE(i32 %113, i32 %117)
  %119 = load i32, i32* @PCH_PP_ON_DELAYS, align 4
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %121 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @I915_WRITE(i32 %119, i32 %123)
  %125 = load i32, i32* @PCH_PP_OFF_DELAYS, align 4
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %127 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @I915_WRITE(i32 %125, i32 %129)
  %131 = load i32, i32* @PCH_PP_DIVISOR, align 4
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @I915_WRITE(i32 %131, i32 %135)
  %137 = load i32, i32* @PCH_PP_CONTROL, align 4
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %139 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @I915_WRITE(i32 %137, i32 %141)
  %143 = load i32, i32* @RSTDBYCTL, align 4
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %145 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @I915_WRITE(i32 %143, i32 %147)
  br label %192

149:                                              ; preds = %90
  %150 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %152 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @I915_WRITE(i32 %150, i32 %154)
  %156 = load i32, i32* @BLC_PWM_CTL, align 4
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @I915_WRITE(i32 %156, i32 %160)
  %162 = load i32, i32* @BLC_HIST_CTL, align 4
  %163 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %164 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @I915_WRITE(i32 %162, i32 %166)
  %168 = load i32, i32* @PP_ON_DELAYS, align 4
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %170 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @I915_WRITE(i32 %168, i32 %172)
  %174 = load i32, i32* @PP_OFF_DELAYS, align 4
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %176 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @I915_WRITE(i32 %174, i32 %178)
  %180 = load i32, i32* @PP_DIVISOR, align 4
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %182 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @I915_WRITE(i32 %180, i32 %184)
  %186 = load i32, i32* @PP_CONTROL, align 4
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %188 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @I915_WRITE(i32 %186, i32 %190)
  br label %192

192:                                              ; preds = %149, %94
  %193 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %194 = call i32 @intel_disable_fbc(%struct.drm_device* %193)
  %195 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %196 = call i64 @I915_HAS_FBC(%struct.drm_device* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %192
  %199 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %200 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load i32, i32* @ILK_DPFC_CB_BASE, align 4
  %204 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %205 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @I915_WRITE(i32 %203, i32 %207)
  br label %246

209:                                              ; preds = %198
  %210 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %211 = call i64 @IS_GM45(%struct.drm_device* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %209
  %214 = load i32, i32* @DPFC_CB_BASE, align 4
  %215 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %216 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @I915_WRITE(i32 %214, i32 %218)
  br label %245

220:                                              ; preds = %209
  %221 = load i32, i32* @FBC_CFB_BASE, align 4
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %223 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @I915_WRITE(i32 %221, i32 %225)
  %227 = load i32, i32* @FBC_LL_BASE, align 4
  %228 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %229 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @I915_WRITE(i32 %227, i32 %231)
  %233 = load i32, i32* @FBC_CONTROL2, align 4
  %234 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %235 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @I915_WRITE(i32 %233, i32 %237)
  %239 = load i32, i32* @FBC_CONTROL, align 4
  %240 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %241 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @I915_WRITE(i32 %239, i32 %243)
  br label %245

245:                                              ; preds = %220, %213
  br label %246

246:                                              ; preds = %245, %202
  br label %247

247:                                              ; preds = %246, %192
  %248 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %249 = load i32, i32* @DRIVER_MODESET, align 4
  %250 = call i32 @drm_core_check_feature(%struct.drm_device* %248, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %247
  %253 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %254 = call i32 @i915_restore_vga(%struct.drm_device* %253)
  br label %258

255:                                              ; preds = %247
  %256 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %257 = call i32 @i915_redisable_vga(%struct.drm_device* %256)
  br label %258

258:                                              ; preds = %255, %252
  ret void
}

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @i915_restore_display_reg(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_device*) #1

declare dso_local i32 @IS_I830(%struct.drm_device*) #1

declare dso_local i32 @IS_845G(%struct.drm_device*) #1

declare dso_local i32 @intel_disable_fbc(%struct.drm_device*) #1

declare dso_local i64 @I915_HAS_FBC(%struct.drm_device*) #1

declare dso_local i64 @IS_GM45(%struct.drm_device*) #1

declare dso_local i32 @i915_restore_vga(%struct.drm_device*) #1

declare dso_local i32 @i915_redisable_vga(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
