; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fanpwm.c_nouveau_fanpwm_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fanpwm.c_nouveau_fanpwm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*, i32, i32*, i32*)*, i32 }
%struct.dcb_gpio_func = type { i32, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.nouveau_fanpwm_priv = type { %struct.dcb_gpio_func, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [9 x i8] c"NvFanPWM\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@nouveau_fanpwm_get = common dso_local global i32 0, align 4
@nouveau_fanpwm_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fanpwm_create(%struct.nouveau_therm* %0, %struct.dcb_gpio_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca %struct.dcb_gpio_func*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_therm_priv*, align 8
  %8 = alloca %struct.nouveau_fanpwm_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store %struct.dcb_gpio_func* %1, %struct.dcb_gpio_func** %5, align 8
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %12 = call %struct.nouveau_device* @nv_device(%struct.nouveau_therm* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %6, align 8
  %13 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %14 = bitcast %struct.nouveau_therm* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %15, %struct.nouveau_therm_priv** %7, align 8
  %16 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %20 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nouveau_boolopt(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %30, i32 0, i32 0
  %32 = load i32 (%struct.nouveau_therm*, i32, i32*, i32*)*, i32 (%struct.nouveau_therm*, i32, i32*, i32*)** %31, align 8
  %33 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %34 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %35 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %32(%struct.nouveau_therm* %33, i32 %36, i32* %9, i32* %10)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29, %24, %2
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %29
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.nouveau_fanpwm_priv* @kzalloc(i32 24, i32 %45)
  store %struct.nouveau_fanpwm_priv* %46, %struct.nouveau_fanpwm_priv** %8, align 8
  %47 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %8, align 8
  %48 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %47, i32 0, i32 1
  %49 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %7, align 8
  %50 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %49, i32 0, i32 0
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  %51 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %8, align 8
  %52 = icmp ne %struct.nouveau_fanpwm_priv* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %73

56:                                               ; preds = %44
  %57 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %8, align 8
  %58 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* @nouveau_fanpwm_get, align 4
  %61 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %8, align 8
  %62 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @nouveau_fanpwm_set, align 4
  %65 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %8, align 8
  %66 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %68, i32 0, i32 0
  %70 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %71 = bitcast %struct.dcb_gpio_func* %69 to i8*
  %72 = bitcast %struct.dcb_gpio_func* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 4 %72, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %56, %53, %41
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_boolopt(i32, i8*, i32) #1

declare dso_local %struct.nouveau_fanpwm_priv* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
