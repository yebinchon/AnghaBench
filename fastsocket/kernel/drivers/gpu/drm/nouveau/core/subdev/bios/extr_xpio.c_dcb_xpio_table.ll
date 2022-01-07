; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_xpio.c_dcb_xpio_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_xpio.c_dcb_xpio_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_xpio_table(%struct.nouveau_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
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
  %21 = call i32 @dcb_xpiod_table(%struct.nouveau_bios* %16, i32* %17, i32* %18, i32* %19, i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %66

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
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %29
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 0
  %47 = call i32 @nv_ro08(%struct.nouveau_bios* %44, i32 %46)
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @nv_ro08(%struct.nouveau_bios* %49, i32 %51)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 2
  %57 = call i32 @nv_ro08(%struct.nouveau_bios* %54, i32 %56)
  %58 = load i32*, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 3
  %62 = call i32 @nv_ro08(%struct.nouveau_bios* %59, i32 %61)
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %7, align 4
  br label %67

65:                                               ; preds = %29
  br label %66

66:                                               ; preds = %65, %24, %6
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @dcb_xpiod_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
