; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_pll_limits_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_pll_limits_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i64 }
%struct.bit_entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32*, i32*, i32*, i32*)* @pll_limits_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_limits_table(%struct.nouveau_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %16 = call i32 @bit_entry(%struct.nouveau_bios* %15, i8 signext 67, %struct.bit_entry* %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 10
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %24 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 8
  %27 = call i32 @nv_ro16(%struct.nouveau_bios* %23, i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 0
  %34 = call i32 @nv_ro08(%struct.nouveau_bios* %31, i32 %33)
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @nv_ro08(%struct.nouveau_bios* %36, i32 %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 2
  %44 = call i32 @nv_ro08(%struct.nouveau_bios* %41, i32 %43)
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 3
  %49 = call i32 @nv_ro08(%struct.nouveau_bios* %46, i32 %48)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %79

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %18, %5
  %54 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %55 = call i32 @bmp_version(%struct.nouveau_bios* %54)
  %56 = icmp sge i32 %55, 1316
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %59 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %60 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 142
  %63 = call i32 @nv_ro16(%struct.nouveau_bios* %58, i64 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 0
  %70 = call i32 @nv_ro08(%struct.nouveau_bios* %67, i32 %69)
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 1, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 24, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %6, align 4
  br label %79

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32*, i32** %8, align 8
  store i32 0, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %66, %30
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @bit_entry(%struct.nouveau_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @bmp_version(%struct.nouveau_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
