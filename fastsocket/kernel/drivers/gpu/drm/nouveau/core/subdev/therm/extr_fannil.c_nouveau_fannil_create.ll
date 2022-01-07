; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fannil.c_nouveau_fannil_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fannil.c_nouveau_fannil_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.nouveau_fan* }
%struct.nouveau_fan = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"none / external\00", align 1
@nouveau_fannil_get = common dso_local global i32 0, align 4
@nouveau_fannil_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fannil_create(%struct.nouveau_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca %struct.nouveau_therm_priv*, align 8
  %5 = alloca %struct.nouveau_fan*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  %6 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %7 = bitcast %struct.nouveau_therm* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %8, %struct.nouveau_therm_priv** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nouveau_fan* @kzalloc(i32 16, i32 %9)
  store %struct.nouveau_fan* %10, %struct.nouveau_fan** %5, align 8
  %11 = load %struct.nouveau_fan*, %struct.nouveau_fan** %5, align 8
  %12 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %12, i32 0, i32 0
  store %struct.nouveau_fan* %11, %struct.nouveau_fan** %13, align 8
  %14 = load %struct.nouveau_fan*, %struct.nouveau_fan** %5, align 8
  %15 = icmp ne %struct.nouveau_fan* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.nouveau_fan*, %struct.nouveau_fan** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @nouveau_fannil_get, align 4
  %23 = load %struct.nouveau_fan*, %struct.nouveau_fan** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @nouveau_fannil_set, align 4
  %26 = load %struct.nouveau_fan*, %struct.nouveau_fan** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.nouveau_fan* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
