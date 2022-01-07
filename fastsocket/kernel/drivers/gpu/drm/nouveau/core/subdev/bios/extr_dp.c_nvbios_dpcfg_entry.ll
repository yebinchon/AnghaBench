; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpcfg_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpcfg_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*)* @nvbios_dpcfg_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbios_dpcfg_entry(%struct.nouveau_bios* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %45

19:                                               ; preds = %7
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @nvbios_dp_table(%struct.nouveau_bios* %20, i32* %21, i32* %22, i32* %23, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %29, %31
  %33 = add nsw i32 %27, %32
  %34 = load i32*, i32** %13, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 6
  %38 = call i32 @nv_ro08(%struct.nouveau_bios* %35, i32 %37)
  %39 = load i32*, i32** %15, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 7
  %43 = call i32 @nv_ro08(%struct.nouveau_bios* %40, i32 %42)
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %19, %7
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %51, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = add nsw i32 %54, %58
  store i32 %59, i32* %8, align 4
  br label %61

60:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @nvbios_dp_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
