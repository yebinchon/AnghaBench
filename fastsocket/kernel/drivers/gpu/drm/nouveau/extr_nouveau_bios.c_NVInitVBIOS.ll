; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_NVInitVBIOS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_NVInitVBIOS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios, i32 }
%struct.nvbios = type { i64, i32, i32, i32, i32, i32, %struct.drm_device*, i32 }
%struct.nouveau_bios = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NVBIOS_BIT = common dso_local global i32 0, align 4
@NVBIOS_BMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @NVInitVBIOS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NVInitVBIOS(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca %struct.nvbios*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %4, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_bios* @nouveau_bios(i32 %11)
  store %struct.nouveau_bios* %12, %struct.nouveau_bios** %5, align 8
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  store %struct.nvbios* %14, %struct.nvbios** %6, align 8
  %15 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %16 = call i32 @memset(%struct.nvbios* %15, i32 0, i32 48)
  %17 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %18 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %17, i32 0, i32 7
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %22 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %21, i32 0, i32 6
  store %struct.drm_device* %20, %struct.drm_device** %22, align 8
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %27 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %29 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %32 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %38 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %44 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %46 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %1
  %50 = load i32, i32* @NVBIOS_BIT, align 4
  %51 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %52 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %54 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %57 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %59 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %60 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 6
  %63 = call i32 @parse_bit_structure(%struct.nvbios* %58, i64 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %92

67:                                               ; preds = %1
  %68 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load i32, i32* @NVBIOS_BMP, align 4
  %74 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %75 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %77 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %80 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %83 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %84 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @parse_bmp_structure(%struct.drm_device* %81, %struct.nvbios* %82, i64 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %72, %49
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(i32) #1

declare dso_local i32 @memset(%struct.nvbios*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @parse_bit_structure(%struct.nvbios*, i64) #1

declare dso_local i32 @parse_bmp_structure(%struct.drm_device*, %struct.nvbios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
