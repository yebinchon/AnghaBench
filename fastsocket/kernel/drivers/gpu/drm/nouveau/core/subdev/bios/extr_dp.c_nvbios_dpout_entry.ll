; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpout_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpout_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32, i32*, i32*, i32*, i32*)* @nvbios_dpout_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbios_dpout_entry(%struct.nouveau_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @nvbios_dp_table(%struct.nouveau_bios* %16, i32* %17, i32* %18, i32* %19, i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %24
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %35, %37
  %39 = add nsw i32 %34, %38
  %40 = call i32 @nv_ro16(%struct.nouveau_bios* %30, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = mul nsw i32 %42, %47
  switch i32 %48, label %73 [
    i32 33, label %49
    i32 48, label %49
    i32 64, label %65
  ]

49:                                               ; preds = %29, %29
  %50 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 4
  %53 = call i32 @nv_ro08(%struct.nouveau_bios* %50, i32 %52)
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 5
  %58 = call i32 @nv_ro08(%struct.nouveau_bios* %55, i32 %57)
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 4
  %63 = call i32 @nv_ro08(%struct.nouveau_bios* %60, i32 %62)
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  br label %74

65:                                               ; preds = %29
  %66 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 4
  %69 = call i32 @nv_ro08(%struct.nouveau_bios* %66, i32 %68)
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %12, align 8
  store i32 0, i32* %71, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 0, i32* %72, align 4
  br label %74

73:                                               ; preds = %29
  br label %74

74:                                               ; preds = %73, %65, %49
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %7, align 4
  br label %78

76:                                               ; preds = %24, %6
  %77 = load i32*, i32** %10, align 8
  store i32 0, i32* %77, align 4
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @nvbios_dp_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
