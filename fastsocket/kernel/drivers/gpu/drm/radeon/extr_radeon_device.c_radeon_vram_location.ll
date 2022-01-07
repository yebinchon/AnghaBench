; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_vram_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_vram_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.radeon_mc = type { i32, i32, i32, i32, i64, i64, i64 }

@radeon_vram_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"limiting VRAM to PCI aperture size\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_vram_location(%struct.radeon_device* %0, %struct.radeon_mc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_mc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @radeon_vram_limit, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 20
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 -1, %17
  %19 = add i32 %18, 1
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %21, %3
  %37 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RADEON_IS_AGP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %36
  %55 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %56 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %54
  %63 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %62
  %72 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %85 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %71, %62, %54, %36
  %87 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %88 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %91 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %103 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %100, %86
  %111 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %115 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 20
  %118 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %119 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %123 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %127, 20
  %129 = call i32 @dev_info(i32 %113, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %121, i64 %124, i32 %128)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
