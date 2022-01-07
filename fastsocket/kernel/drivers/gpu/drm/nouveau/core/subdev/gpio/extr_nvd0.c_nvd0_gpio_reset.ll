; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nvd0.c_nvd0_gpio_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nvd0.c_nvd0_gpio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i64, i64, i64)* }
%struct.nouveau_bios = type { i32 }
%struct.nvd0_gpio_priv = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvd0_gpio_reset(%struct.nouveau_gpio* %0, i64 %1) #0 {
  %3 = alloca %struct.nouveau_gpio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca %struct.nvd0_gpio_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %18 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_gpio* %17)
  store %struct.nouveau_bios* %18, %struct.nouveau_bios** %5, align 8
  %19 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %20 = bitcast %struct.nouveau_gpio* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nvd0_gpio_priv*
  store %struct.nvd0_gpio_priv* %21, %struct.nvd0_gpio_priv** %6, align 8
  store i32 -1, i32* %10, align 4
  br label %22

22:                                               ; preds = %93, %65, %2
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = call i32 @dcb_gpio_entry(%struct.nouveau_bios* %23, i32 0, i32 %25, i64* %7, i64* %8)
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %22
  %29 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @nv_ro32(%struct.nouveau_bios* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 63
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 65280
  %44 = ashr i32 %43, 8
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %14, align 8
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 16711680
  %48 = ashr i32 %47, 16
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %15, align 8
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 520093696
  %52 = ashr i32 %51, 24
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %28
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %28
  br label %22

66:                                               ; preds = %61, %57
  %67 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %68 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %67, i32 0, i32 0
  %69 = load i32 (%struct.nouveau_gpio*, i32, i64, i64, i64)*, i32 (%struct.nouveau_gpio*, i32, i64, i64, i64)** %68, align 8
  %70 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %3, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 %69(%struct.nouveau_gpio* %70, i32 0, i64 %71, i64 %72, i64 %73)
  %75 = load %struct.nvd0_gpio_priv*, %struct.nvd0_gpio_priv** %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = mul nsw i64 %76, 4
  %78 = add nsw i64 54800, %77
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @nv_mask(%struct.nvd0_gpio_priv* %75, i32 %79, i32 255, i64 %80)
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %16, align 8
  %84 = icmp ne i64 %82, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %66
  %86 = load %struct.nvd0_gpio_priv*, %struct.nvd0_gpio_priv** %6, align 8
  %87 = load i64, i64* %16, align 8
  %88 = mul nsw i64 %87, 4
  %89 = add nsw i64 55104, %88
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @nv_mask(%struct.nvd0_gpio_priv* %86, i32 %90, i32 255, i64 %91)
  br label %93

93:                                               ; preds = %85, %66
  br label %22

94:                                               ; preds = %22
  ret void
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_gpio*) #1

declare dso_local i32 @dcb_gpio_entry(%struct.nouveau_bios*, i32, i32, i64*, i64*) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_mask(%struct.nvd0_gpio_priv*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
