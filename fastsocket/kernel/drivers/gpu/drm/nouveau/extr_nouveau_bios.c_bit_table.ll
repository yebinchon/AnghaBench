; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_bit_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_bit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.bit_entry = type { i32, i8*, i8*, i64, i64 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i64, i64*, i32 }

@NVBIOS_BIT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bit_table(%struct.drm_device* %0, i64 %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bit_entry*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nvbios*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %8, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  store %struct.nvbios* %15, %struct.nvbios** %9, align 8
  %16 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %17 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVBIOS_BIT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %100

24:                                               ; preds = %3
  %25 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %26 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %29 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 10
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %27, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %36 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %39 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 12
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  store i64* %43, i64** %11, align 8
  br label %44

44:                                               ; preds = %84, %24
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %10, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = load i64*, i64** %11, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %59 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %64 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @ROM16(i64 %67)
  %69 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %70 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 4
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @ROM16(i64 %73)
  %75 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %76 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 4
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ROMPTR(%struct.drm_device* %77, i64 %80)
  %82 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %83 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %4, align 4
  br label %100

84:                                               ; preds = %48
  %85 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %86 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.nvbios*, %struct.nvbios** %9, align 8
  %89 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 9
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %87, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  store i64* %96, i64** %11, align 8
  br label %44

97:                                               ; preds = %44
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %54, %21
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i8* @ROM16(i64) #1

declare dso_local i32 @ROMPTR(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
