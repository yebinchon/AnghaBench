; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv10.c_nv10_gpio_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nv10.c_nv10_gpio_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_gpio*, i32)* @nv10_gpio_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_gpio_sense(%struct.nouveau_gpio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 16
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %12 = call i32 @nv_rd32(%struct.nouveau_gpio* %11, i32 6293528)
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 256
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 2
  %27 = mul nsw i32 %26, 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %29 = call i32 @nv_rd32(%struct.nouveau_gpio* %28, i32 6293532)
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 14
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 10
  %44 = mul nsw i32 %43, 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %46 = call i32 @nv_rd32(%struct.nouveau_gpio* %45, i32 6293584)
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %41, %24, %8
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @nv_rd32(%struct.nouveau_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
