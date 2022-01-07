; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv10.c_nv10_gpio_drive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv10.c_nv10_gpio_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_gpio*, i32, i32, i32)* @nv10_gpio_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_gpio_drive(%struct.nouveau_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 16
  store i32 %17, i32* %7, align 4
  store i32 6293528, i32* %10, align 4
  store i32 17, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %12, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 2
  %28 = mul nsw i32 %27, 4
  store i32 %28, i32* %7, align 4
  store i32 6293532, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %12, align 4
  br label %48

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 14
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 10
  %39 = mul nsw i32 %38, 4
  store i32 %39, i32* %7, align 4
  store i32 6293584, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %12, align 4
  br label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @nv_mask(%struct.nouveau_gpio* %50, i32 %51, i32 %54, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @nv_mask(%struct.nouveau_gpio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
