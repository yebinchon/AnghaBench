; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fantog.c_nouveau_fantog_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fantog.c_nouveau_fantog_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fantog_priv = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nouveau_therm_priv = type { i32 }
%struct.nouveau_timer = type { i32 (%struct.nouveau_timer*, i32, %struct.TYPE_4__*)* }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)* }

@DCB_GPIO_FAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_fantog_priv*, i32)* @nouveau_fantog_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_fantog_update(%struct.nouveau_fantog_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_fantog_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_therm_priv*, align 8
  %6 = alloca %struct.nouveau_timer*, align 8
  %7 = alloca %struct.nouveau_gpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_fantog_priv* %0, %struct.nouveau_fantog_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %16, %struct.nouveau_therm_priv** %5, align 8
  %17 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %18 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm_priv* %17)
  store %struct.nouveau_timer* %18, %struct.nouveau_timer** %6, align 8
  %19 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %20 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm_priv* %19)
  store %struct.nouveau_gpio* %20, %struct.nouveau_gpio** %7, align 8
  %21 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %21, i32 0, i32 2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %29 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %7, align 8
  %36 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %35, i32 0, i32 1
  %37 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %36, align 8
  %38 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %7, align 8
  %39 = load i32, i32* @DCB_GPIO_FAN, align 4
  %40 = call i32 %37(%struct.nouveau_gpio* %38, i32 0, i32 %39, i32 255)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %7, align 8
  %45 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %44, i32 0, i32 0
  %46 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %45, align 8
  %47 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %7, align 8
  %48 = load i32, i32* @DCB_GPIO_FAN, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 %46(%struct.nouveau_gpio* %47, i32 0, i32 %48, i32 255, i32 %49)
  %51 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i64 @list_empty(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %31
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 100
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %64 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = sdiv i32 %66, 100
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %72 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %70, %61
  %77 = load %struct.nouveau_timer*, %struct.nouveau_timer** %6, align 8
  %78 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %77, i32 0, i32 0
  %79 = load i32 (%struct.nouveau_timer*, i32, %struct.TYPE_4__*)*, i32 (%struct.nouveau_timer*, i32, %struct.TYPE_4__*)** %78, align 8
  %80 = load %struct.nouveau_timer*, %struct.nouveau_timer** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %81, 1000
  %83 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %84 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %83, i32 0, i32 3
  %85 = call i32 %79(%struct.nouveau_timer* %80, i32 %82, %struct.TYPE_4__* %84)
  br label %86

86:                                               ; preds = %76, %56, %31
  %87 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %3, align 8
  %88 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %87, i32 0, i32 2
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm_priv*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
