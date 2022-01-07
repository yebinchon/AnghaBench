; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nve0.c_nve0_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nve0.c_nve0_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nve0_gpio_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nve0_gpio_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nve0_gpio_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %9 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %10 = bitcast %struct.nouveau_subdev* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nve0_gpio_priv*
  store %struct.nve0_gpio_priv* %11, %struct.nve0_gpio_priv** %3, align 8
  %12 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %13 = call i32 @nv_rd32(%struct.nve0_gpio_priv* %12, i32 56320)
  %14 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %15 = call i32 @nv_rd32(%struct.nve0_gpio_priv* %14, i32 56328)
  %16 = and i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %18 = call i32 @nv_rd32(%struct.nve0_gpio_priv* %17, i32 56448)
  %19 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %20 = call i32 @nv_rd32(%struct.nve0_gpio_priv* %19, i32 56456)
  %21 = and i32 %18, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 65535
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 16
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, -65536
  %31 = or i32 %28, %30
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %58, %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 32
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ false, %32 ], [ %39, %37 ]
  br i1 %41, label %42, label %61

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %52 = getelementptr inbounds %struct.nve0_gpio_priv, %struct.nve0_gpio_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @nouveau_event_trigger(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %32

61:                                               ; preds = %40
  %62 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @nv_wr32(%struct.nve0_gpio_priv* %62, i32 56320, i32 %63)
  %65 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @nv_wr32(%struct.nve0_gpio_priv* %65, i32 56456, i32 %66)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nve0_gpio_priv*, i32) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nve0_gpio_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
