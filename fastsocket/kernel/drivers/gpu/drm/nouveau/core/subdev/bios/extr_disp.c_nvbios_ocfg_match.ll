; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_disp.c_nvbios_ocfg_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_disp.c_nvbios_ocfg_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_ocfg = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_ocfg_match(%struct.nouveau_bios* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.nvbios_ocfg* %7) #0 {
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nvbios_ocfg*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.nvbios_ocfg* %7, %struct.nvbios_ocfg** %16, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %39, %8
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %18, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %18, align 8
  %24 = trunc i64 %22 to i32
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %16, align 8
  %30 = call i64 @nvbios_ocfg_parse(%struct.nouveau_bios* %20, i64 %21, i32 %24, i32* %25, i32* %26, i32* %27, i32* %28, %struct.nvbios_ocfg* %29)
  store i64 %30, i64* %17, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %16, align 8
  %34 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  br label %19

40:                                               ; preds = %38, %19
  %41 = load i64, i64* %17, align 8
  ret i64 %41
}

declare dso_local i64 @nvbios_ocfg_parse(%struct.nouveau_bios*, i64, i32, i32*, i32*, i32*, i32*, %struct.nvbios_ocfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
