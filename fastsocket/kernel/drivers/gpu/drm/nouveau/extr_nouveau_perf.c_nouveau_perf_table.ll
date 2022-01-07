; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i64, i32*, i32 }
%struct.bit_entry = type { i32, i32* }

@NVBIOS_BMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_device*, i32*)* @nouveau_perf_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nouveau_perf_table(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvbios*, align 8
  %8 = alloca %struct.bit_entry, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %6, align 8
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  store %struct.nvbios* %14, %struct.nvbios** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call i32 @bit_table(%struct.drm_device* %15, i8 signext 80, %struct.bit_entry* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @ROMPTR(%struct.drm_device* %27, i32 %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  store i32* %40, i32** %3, align 8
  br label %84

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %22, %18, %2
  %43 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %44 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NVBIOS_BMP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %42
  %49 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %50 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %53 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 37
  br i1 %59, label %60, label %82

60:                                               ; preds = %48
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %63 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %66 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 148
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @ROMPTR(%struct.drm_device* %61, i32 %71)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  store i32* %80, i32** %3, align 8
  br label %84

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %48
  br label %83

83:                                               ; preds = %82, %42
  store i32* null, i32** %3, align 8
  br label %84

84:                                               ; preds = %83, %75, %35
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32* @ROMPTR(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
