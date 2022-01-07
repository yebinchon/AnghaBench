; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv04.c_nv04_devinit_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv04.c_nv04_devinit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_devinit_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"adaptor not initialised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_devinit_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv04_devinit_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = bitcast %struct.nouveau_object* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nv04_devinit_priv*
  store %struct.nv04_devinit_priv* %7, %struct.nv04_devinit_priv** %3, align 8
  %8 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nv04_devinit_priv, %struct.nv04_devinit_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %1
  %14 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %15 = call i32 @nv_rdvgac(%struct.nv04_devinit_priv* %14, i32 0, i32 6)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %17 = call i32 @nv_rdvgac(%struct.nv04_devinit_priv* %16, i32 0, i32 7)
  %18 = and i32 %17, 1
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %23 = call i32 @nv_rdvgac(%struct.nv04_devinit_priv* %22, i32 0, i32 7)
  %24 = and i32 %23, 32
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %29 = call i32 @nv_rdvgac(%struct.nv04_devinit_priv* %28, i32 0, i32 37)
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 10
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %35 = call i32 @nv_rdvgac(%struct.nv04_devinit_priv* %34, i32 0, i32 65)
  %36 = and i32 %35, 1
  %37 = shl i32 %36, 11
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %13
  %43 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %44 = call i32 @nv_info(%struct.nv04_devinit_priv* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %46 = getelementptr inbounds %struct.nv04_devinit_priv, %struct.nv04_devinit_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %13
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %51 = getelementptr inbounds %struct.nv04_devinit_priv, %struct.nv04_devinit_priv* %50, i32 0, i32 0
  %52 = call i32 @nouveau_devinit_init(%struct.TYPE_2__* %51)
  ret i32 %52
}

declare dso_local i32 @nv_rdvgac(%struct.nv04_devinit_priv*, i32, i32) #1

declare dso_local i32 @nv_info(%struct.nv04_devinit_priv*, i8*) #1

declare dso_local i32 @nouveau_devinit_init(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
