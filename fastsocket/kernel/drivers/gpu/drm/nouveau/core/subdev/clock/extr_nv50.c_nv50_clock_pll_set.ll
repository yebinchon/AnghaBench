; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv50.c_nv50_clock_pll_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv50.c_nv50_clock_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nv50_clock_priv = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"failed to retrieve pll data, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed pll calculation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_clock*, i32, i32)* @nv50_clock_pll_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_clock_pll_set(%struct.nouveau_clock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_clock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv50_clock_priv*, align 8
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca %struct.nvbios_pll, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %18 = bitcast %struct.nouveau_clock* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_clock_priv*
  store %struct.nv50_clock_priv* %19, %struct.nv50_clock_priv** %8, align 8
  %20 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %21 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv50_clock_priv* %20)
  store %struct.nouveau_bios* %21, %struct.nouveau_bios** %9, align 8
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %22, i32 %23, %struct.nvbios_pll* %10)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 (%struct.nouveau_clock*, i8*, ...) @nv_error(%struct.nouveau_clock* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %4, align 4
  br label %114

32:                                               ; preds = %3
  %33 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @nv04_pll_calc(%struct.nouveau_clock* %33, %struct.nvbios_pll* %10, i32 %34, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %40 = call i32 (%struct.nouveau_clock*, i8*, ...) @nv_error(%struct.nouveau_clock* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %4, align 4
  br label %114

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %96 [
    i32 129, label %45
    i32 128, label %45
    i32 130, label %72
  ]

45:                                               ; preds = %42, %42
  %46 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %47 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 0
  %50 = call i32 @nv_wr32(%struct.nv50_clock_priv* %46, i64 %49, i32 268437009)
  %51 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %52 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @nv_mask(%struct.nv50_clock_priv* %51, i64 %54, i32 16711935, i32 %58)
  %60 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %61 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 8
  %64 = load i32, i32* %15, align 4
  %65 = shl i32 %64, 28
  %66 = load i32, i32* %14, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @nv_mask(%struct.nv50_clock_priv* %60, i64 %63, i32 2147418367, i32 %70)
  br label %113

72:                                               ; preds = %42
  %73 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %74 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 0
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 %77, 22
  %79 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 19
  %82 = or i32 %78, %81
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %82, %84
  %86 = call i32 @nv_mask(%struct.nv50_clock_priv* %73, i64 %76, i32 33488896, i32 %85)
  %87 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %88 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 4
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @nv_wr32(%struct.nv50_clock_priv* %87, i64 %90, i32 %94)
  br label %113

96:                                               ; preds = %42
  %97 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %98 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 0
  %101 = load i32, i32* %15, align 4
  %102 = shl i32 %101, 16
  %103 = call i32 @nv_mask(%struct.nv50_clock_priv* %97, i64 %100, i32 458752, i32 %102)
  %104 = load %struct.nv50_clock_priv*, %struct.nv50_clock_priv** %8, align 8
  %105 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 8
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @nv_wr32(%struct.nv50_clock_priv* %104, i64 %107, i32 %111)
  br label %113

113:                                              ; preds = %96, %72, %45
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %38, %27
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv50_clock_priv*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nv_error(%struct.nouveau_clock*, i8*, ...) #1

declare dso_local i32 @nv04_pll_calc(%struct.nouveau_clock*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_clock_priv*, i64, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_clock_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
