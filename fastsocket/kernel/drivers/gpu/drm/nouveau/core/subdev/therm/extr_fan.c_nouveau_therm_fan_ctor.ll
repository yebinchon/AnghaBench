; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.nouveau_therm*, %struct.dcb_gpio_func, i32 }
%struct.dcb_gpio_func = type { i32*, i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func.0*)* }
%struct.dcb_gpio_func.0 = type opaque
%struct.nouveau_bios = type { i32 }

@DCB_GPIO_FAN = common dso_local global i32 0, align 4
@DCB_GPIO_LOG_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"GPIO_FAN is in input mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"FAN control: %s\0A\00", align 1
@DCB_GPIO_FAN_SENSE = common dso_local global i32 0, align 4
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@nouveau_fan_alarm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"parsing the thermal table failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_fan_ctor(%struct.nouveau_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca %struct.nouveau_therm_priv*, align 8
  %5 = alloca %struct.nouveau_gpio*, align 8
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca %struct.dcb_gpio_func, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %10 = bitcast %struct.nouveau_therm* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %11, %struct.nouveau_therm_priv** %4, align 8
  %12 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %13 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm* %12)
  store %struct.nouveau_gpio* %13, %struct.nouveau_gpio** %5, align 8
  %14 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %15 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_therm* %14)
  store %struct.nouveau_bios* %15, %struct.nouveau_bios** %6, align 8
  %16 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %16, i32 0, i32 0
  %18 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func.0*)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func.0*)** %17, align 8
  %19 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %20 = load i32, i32* @DCB_GPIO_FAN, align 4
  %21 = bitcast %struct.dcb_gpio_func* %7 to %struct.dcb_gpio_func.0*
  %22 = call i32 %18(%struct.nouveau_gpio* %19, i32 0, i32 %20, i32 255, %struct.dcb_gpio_func.0* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DCB_GPIO_LOG_DIR_IN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %35 = call i32 @nv_debug(%struct.nouveau_therm* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %25
  %39 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %40 = call i32 @nouveau_fanpwm_create(%struct.nouveau_therm* %39, %struct.dcb_gpio_func* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %45 = call i32 @nouveau_fantog_create(%struct.nouveau_therm* %44, %struct.dcb_gpio_func* %7)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %53 = call i32 @nouveau_fannil_create(%struct.nouveau_therm* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %125

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %61 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %62 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @nv_info(%struct.nouveau_therm* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %68 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %67, i32 0, i32 0
  %69 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func.0*)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func.0*)** %68, align 8
  %70 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %71 = load i32, i32* @DCB_GPIO_FAN_SENSE, align 4
  %72 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %73 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  %76 = bitcast %struct.dcb_gpio_func* %75 to %struct.dcb_gpio_func.0*
  %77 = call i32 %69(%struct.nouveau_gpio* %70, i32 0, i32 %71, i32 255, %struct.dcb_gpio_func.0* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %59
  %81 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %82 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %83 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %59
  %88 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %89 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %90 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  store %struct.nouveau_therm* %88, %struct.nouveau_therm** %92, align 8
  %93 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %94 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* @nouveau_fan_alarm, align 4
  %98 = call i32 @nouveau_alarm_init(i32* %96, i32 %97)
  %99 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %100 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %105 = call i32 @nouveau_therm_fan_set_defaults(%struct.nouveau_therm* %104)
  %106 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %107 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %108 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = call i32 @nvbios_perf_fan_parse(%struct.nouveau_bios* %106, i32* %110)
  %112 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %113 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %114 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i64 @nvbios_therm_fan_parse(%struct.nouveau_bios* %112, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %87
  %120 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %121 = call i32 @nv_error(%struct.nouveau_therm* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %87
  %123 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %124 = call i32 @nouveau_therm_fan_safety_checks(%struct.nouveau_therm* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %56
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_therm*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_therm*, i8*) #1

declare dso_local i32 @nouveau_fanpwm_create(%struct.nouveau_therm*, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nouveau_fantog_create(%struct.nouveau_therm*, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nouveau_fannil_create(%struct.nouveau_therm*) #1

declare dso_local i32 @nv_info(%struct.nouveau_therm*, i8*, i32) #1

declare dso_local i32 @nouveau_alarm_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nouveau_therm_fan_set_defaults(%struct.nouveau_therm*) #1

declare dso_local i32 @nvbios_perf_fan_parse(%struct.nouveau_bios*, i32*) #1

declare dso_local i64 @nvbios_therm_fan_parse(%struct.nouveau_bios*, i32*) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*) #1

declare dso_local i32 @nouveau_therm_fan_safety_checks(%struct.nouveau_therm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
