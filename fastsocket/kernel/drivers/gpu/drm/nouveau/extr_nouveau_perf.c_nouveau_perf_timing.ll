; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i64 }
%struct.bit_entry = type { i32, i32* }

@NVBIOS_BMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nouveau_perf_timing(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nvbios*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %10, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  store %struct.nvbios* %22, %struct.nvbios** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %24 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NVBIOS_BMP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %15, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @nouveau_perf_entry(%struct.drm_device* %30, i32 %31, i32* %33, i32* %16, i32* %17, i32* %34)
  store i32* %35, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 21
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i1 [ false, %29 ], [ %40, %37 ]
  br i1 %42, label %43, label %57

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ROM32(i32 %47)
  %49 = mul nsw i32 %48, 20
  %50 = icmp sle i32 %44, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32*, i32** %8, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 14, i32* %53, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 41
  store i32* %55, i32** %5, align 8
  br label %136

56:                                               ; preds = %43
  br label %29

57:                                               ; preds = %41
  store i32* null, i32** %5, align 8
  br label %136

58:                                               ; preds = %4
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = call i32 @bit_table(%struct.drm_device* %59, i8 signext 80, %struct.bit_entry* %12)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %68 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @ROMPTR(%struct.drm_device* %67, i32 %71)
  store i32* %72, i32** %14, align 8
  br label %85

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %79 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32* @ROMPTR(%struct.drm_device* %78, i32 %82)
  store i32* %83, i32** %14, align 8
  br label %84

84:                                               ; preds = %77, %73
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %58
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %135

89:                                               ; preds = %86
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 16
  br i1 %93, label %94, label %135

94:                                               ; preds = %89
  %95 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32* @nouveau_perf_ramcfg(%struct.drm_device* %95, i32 %96, i32* %97, i32* %98)
  store i32* %99, i32** %18, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %134

102:                                              ; preds = %94
  %103 = load i32*, i32** %18, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %102
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %14, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %124, i64 %132
  store i32* %133, i32** %5, align 8
  br label %136

134:                                              ; preds = %102, %94
  br label %135

135:                                              ; preds = %134, %89, %86
  store i32* null, i32** %5, align 8
  br label %136

136:                                              ; preds = %135, %110, %57, %51
  %137 = load i32*, i32** %5, align 8
  ret i32* %137
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32* @nouveau_perf_entry(%struct.drm_device*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32* @ROMPTR(%struct.drm_device*, i32) #1

declare dso_local i32* @nouveau_perf_ramcfg(%struct.drm_device*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
