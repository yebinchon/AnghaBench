; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv50.c_nv50_gpio_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv50.c_nv50_gpio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)* }
%struct.nouveau_bios = type { i32 }
%struct.nv50_gpio_priv = type { i32 }

@nv50_gpio_reset.regs = internal constant [2 x i32] [i32 57600, i32 57996], align 4
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_gpio*, i32)* @nv50_gpio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gpio_reset(%struct.nouveau_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca %struct.nv50_gpio_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %20 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_gpio* %19)
  store %struct.nouveau_bios* %20, %struct.nouveau_bios** %5, align 8
  %21 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %22 = bitcast %struct.nouveau_gpio* %21 to i8*
  %23 = bitcast i8* %22 to %struct.nv50_gpio_priv*
  store %struct.nv50_gpio_priv* %23, %struct.nv50_gpio_priv** %6, align 8
  store i32 -1, i32* %10, align 4
  br label %24

24:                                               ; preds = %80, %79, %2
  %25 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = call i32 @dcb_gpio_entry(%struct.nouveau_bios* %25, i32 0, i32 %27, i32* %7, i32* %8)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %24
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @nv_ro32(%struct.nouveau_bios* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 31
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 65280
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 16777216
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 33554432
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 67108864
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* @nv50_gpio_reset.regs, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, 15
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %30
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %30
  br label %24

80:                                               ; preds = %75, %71
  %81 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %82 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %81, i32 0, i32 0
  %83 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %82, align 8
  %84 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 %83(%struct.nouveau_gpio* %84, i32 0, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.nv50_gpio_priv*, %struct.nv50_gpio_priv** %6, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 65537, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %12, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @nv_mask(%struct.nv50_gpio_priv* %89, i32 %90, i32 %92, i32 %95)
  br label %24

97:                                               ; preds = %24
  ret void
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_gpio*) #1

declare dso_local i32 @dcb_gpio_entry(%struct.nouveau_bios*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_gpio_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
