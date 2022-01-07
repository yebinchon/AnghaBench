; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vram_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vram_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_mc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"limiting VRAM to PCI aperture size\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_mc*, i32)* @si_vram_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_vram_location(%struct.radeon_device* %0, %struct.radeon_mc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_mc*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %9 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 1099511627775, %15
  %17 = add i64 %16, 1
  %18 = icmp ugt i64 %13, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %33 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %19, %3
  %35 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 20
  %52 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %56 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 20
  %62 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %61)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
