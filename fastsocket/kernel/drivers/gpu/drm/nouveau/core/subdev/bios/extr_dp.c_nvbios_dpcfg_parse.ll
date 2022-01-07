; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpcfg_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpcfg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_dpcfg = type { i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_dpcfg_parse(%struct.nouveau_bios* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.nvbios_dpcfg* %7) #0 {
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nvbios_dpcfg*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.nvbios_dpcfg* %7, %struct.nvbios_dpcfg** %16, align 8
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @nvbios_dpcfg_entry(%struct.nouveau_bios* %18, i32 %19, i32 %20, i32* %21, i32* %22, i32* %23, i32* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %69 [
    i32 33, label %31
    i32 48, label %50
    i32 64, label %50
  ]

31:                                               ; preds = %28
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i8* @nv_ro08(%struct.nouveau_bios* %32, i32 %34)
  %36 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %37 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, 3
  %41 = call i8* @nv_ro08(%struct.nouveau_bios* %38, i32 %40)
  %42 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %43 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 4
  %47 = call i8* @nv_ro08(%struct.nouveau_bios* %44, i32 %46)
  %48 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %49 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %70

50:                                               ; preds = %28, %28
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i8* @nv_ro08(%struct.nouveau_bios* %51, i32 %53)
  %55 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %56 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 2
  %60 = call i8* @nv_ro08(%struct.nouveau_bios* %57, i32 %59)
  %61 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %62 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 3
  %66 = call i8* @nv_ro08(%struct.nouveau_bios* %63, i32 %65)
  %67 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %68 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %70

69:                                               ; preds = %28
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %69, %50, %31
  br label %71

71:                                               ; preds = %70, %8
  %72 = load i32, i32* %17, align 4
  ret i32 %72
}

declare dso_local i32 @nvbios_dpcfg_entry(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
