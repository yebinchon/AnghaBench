; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv10.c_nv10_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv10.c_nv10_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv10_gpio_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv10_gpio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_gpio_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv10_gpio_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %8 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %9 = bitcast %struct.nouveau_subdev* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv10_gpio_priv*
  store %struct.nv10_gpio_priv* %10, %struct.nv10_gpio_priv** %3, align 8
  %11 = load %struct.nv10_gpio_priv*, %struct.nv10_gpio_priv** %3, align 8
  %12 = call i32 @nv_rd32(%struct.nv10_gpio_priv* %11, i32 4356)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 65535
  %15 = ashr i32 %14, 0
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -65536
  %18 = lshr i32 %17, 16
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %45, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 32
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %48

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.nv10_gpio_priv*, %struct.nv10_gpio_priv** %3, align 8
  %39 = getelementptr inbounds %struct.nv10_gpio_priv, %struct.nv10_gpio_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @nouveau_event_trigger(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %19

48:                                               ; preds = %27
  %49 = load %struct.nv10_gpio_priv*, %struct.nv10_gpio_priv** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @nv_wr32(%struct.nv10_gpio_priv* %49, i32 4356, i32 %50)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv10_gpio_priv*, i32) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv10_gpio_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
