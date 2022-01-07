; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_extdev.c_extdev_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_extdev.c_extdev_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32*, i32*, i32*, i32*)* @extdev_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extdev_table(%struct.nouveau_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %19 = call i32 @dcb_table(%struct.nouveau_bios* %18, i32* %12, i32* %13, i32* %14, i32* %15)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 48
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 64
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %5
  store i32 0, i32* %6, align 4
  br label %62

29:                                               ; preds = %25, %22
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, 18
  %33 = call i32 @nv_ro16(%struct.nouveau_bios* %30, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %62

37:                                               ; preds = %29
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, 0
  %41 = call i32 @nv_ro08(%struct.nouveau_bios* %38, i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @nv_ro08(%struct.nouveau_bios* %43, i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 2
  %51 = call i32 @nv_ro08(%struct.nouveau_bios* %48, i32 %50)
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 3
  %56 = call i32 @nv_ro08(%struct.nouveau_bios* %53, i32 %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %37, %36, %28
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @dcb_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
