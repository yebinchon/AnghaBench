; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_user_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_user_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { i64 }

@NOUVEAU_THERM_CTRL_MANUAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_fan_user_set(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_therm_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %8 = bitcast %struct.nouveau_therm* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %9, %struct.nouveau_therm_priv** %6, align 8
  %10 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %11 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NOUVEAU_THERM_CTRL_MANUAL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nouveau_therm_fan_set(%struct.nouveau_therm* %19, i32 1, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @nouveau_therm_fan_set(%struct.nouveau_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
