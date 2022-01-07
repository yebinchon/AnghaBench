; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fantog.c_nouveau_fantog_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fantog.c_nouveau_fantog_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.dcb_gpio_func = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.nouveau_fantog_priv = type { i32, i32, i32, %struct.dcb_gpio_func, i32, %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@nouveau_fantog_get = common dso_local global i32 0, align 4
@nouveau_fantog_set = common dso_local global i32 0, align 4
@nouveau_fantog_alarm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fantog_create(%struct.nouveau_therm* %0, %struct.dcb_gpio_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca %struct.dcb_gpio_func*, align 8
  %6 = alloca %struct.nouveau_therm_priv*, align 8
  %7 = alloca %struct.nouveau_fantog_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store %struct.dcb_gpio_func* %1, %struct.dcb_gpio_func** %5, align 8
  %8 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %9 = bitcast %struct.nouveau_therm* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %10, %struct.nouveau_therm_priv** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nouveau_fantog_priv* @kzalloc(i32 40, i32 %11)
  store %struct.nouveau_fantog_priv* %12, %struct.nouveau_fantog_priv** %7, align 8
  %13 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %14 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %13, i32 0, i32 5
  %15 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %15, i32 0, i32 0
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %18 = icmp ne %struct.nouveau_fantog_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @nouveau_fantog_get, align 4
  %27 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %28 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @nouveau_fantog_set, align 4
  %31 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %32 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %35 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %34, i32 0, i32 4
  %36 = load i32, i32* @nouveau_fantog_alarm, align 4
  %37 = call i32 @nouveau_alarm_init(i32* %35, i32 %36)
  %38 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %39 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %38, i32 0, i32 0
  store i32 100000, i32* %39, align 8
  %40 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %41 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %40, i32 0, i32 1
  store i32 100, i32* %41, align 4
  %42 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %43 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %42, i32 0, i32 3
  %44 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %45 = bitcast %struct.dcb_gpio_func* %43 to i8*
  %46 = bitcast %struct.dcb_gpio_func* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %7, align 8
  %48 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_init(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %22, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.nouveau_fantog_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_alarm_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
