; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_ramcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_ramcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @nouveau_perf_ramcfg(%struct.drm_device* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nouveau_device*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nvbios*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %11, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  store %struct.nvbios* %22, %struct.nvbios** %12, align 8
  %23 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %24 = call i32 @nv_rd32(%struct.nouveau_device* %23, i32 1052672)
  %25 = and i32 %24, 60
  %26 = ashr i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  %28 = load %struct.nvbios*, %struct.nvbios** %12, align 8
  %29 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %4
  %33 = load %struct.nvbios*, %struct.nvbios** %12, align 8
  %34 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.nvbios*, %struct.nvbios** %12, align 8
  %37 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i64, i64* %35, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %32, %4
  %45 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64*, i64** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = call i64* @nouveau_perf_rammap(%struct.drm_device* %45, i32 %46, i64* %47, i64* %14, i64* %15, i64* %48)
  store i64* %49, i64** %16, align 8
  %50 = load i64*, i64** %16, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i64*, i64** %16, align 8
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %13, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %60, %62
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  store i64* %64, i64** %5, align 8
  br label %66

65:                                               ; preds = %52, %44
  store i64* null, i64** %5, align 8
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i64*, i64** %5, align 8
  ret i64* %67
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i64* @nouveau_perf_rammap(%struct.drm_device*, i32, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
