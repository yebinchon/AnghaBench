; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv50.c_nv50_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv50.c_nv50_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv50_gpio_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_gpio_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv50_gpio_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %9 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %10 = bitcast %struct.nouveau_subdev* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv50_gpio_priv*
  store %struct.nv50_gpio_priv* %11, %struct.nv50_gpio_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %13 = call i32 @nv_rd32(%struct.nv50_gpio_priv* %12, i32 57428)
  %14 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %15 = call i32 @nv_rd32(%struct.nv50_gpio_priv* %14, i32 57424)
  %16 = and i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %18 = call %struct.TYPE_4__* @nv_device(%struct.nv50_gpio_priv* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 144
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %24 = call i32 @nv_rd32(%struct.nv50_gpio_priv* %23, i32 57460)
  %25 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %26 = call i32 @nv_rd32(%struct.nv50_gpio_priv* %25, i32 57456)
  %27 = and i32 %24, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 65535
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 16
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, -65536
  %38 = or i32 %35, %37
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %65, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 32
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i1 [ false, %39 ], [ %46, %44 ]
  br i1 %48, label %49, label %68

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %59 = getelementptr inbounds %struct.nv50_gpio_priv, %struct.nv50_gpio_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @nouveau_event_trigger(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %39

68:                                               ; preds = %47
  %69 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @nv_wr32(%struct.nv50_gpio_priv* %69, i32 57428, i32 %70)
  %72 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %73 = call %struct.TYPE_4__* @nv_device(%struct.nv50_gpio_priv* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 144
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @nv_wr32(%struct.nv50_gpio_priv* %78, i32 57460, i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_gpio_priv*, i32) #1

declare dso_local %struct.TYPE_4__* @nv_device(%struct.nv50_gpio_priv*) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_gpio_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
