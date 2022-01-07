; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_mc_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.evergreen_mc_save = type { i32 }

@HDP_REG_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@VGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_MEMORY_DISABLE = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@HDP_NONSURFACE_BASE = common dso_local global i32 0, align 4
@HDP_NONSURFACE_INFO = common dso_local global i32 0, align 4
@HDP_NONSURFACE_SIZE = common dso_local global i32 0, align 4
@MC_VM_AGP_BASE = common dso_local global i32 0, align 4
@MC_VM_AGP_TOP = common dso_local global i32 0, align 4
@MC_VM_AGP_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_mc_save, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 11284, %11
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 11288, %14
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 11292, %17
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 11296, %20
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 11300, %23
  %25 = call i32 @WREG32(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 24
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* @HDP_REG_COHERENCY_FLUSH_CNTL, align 4
  %33 = call i32 @WREG32(i32 %32, i32 0)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i32 @evergreen_mc_stop(%struct.radeon_device* %34, %struct.evergreen_mc_save* %3)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i64 @radeon_mc_wait_for_idle(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %46 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 12
  %54 = call i32 @WREG32(i32 %48, i32 %53)
  %55 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 12
  %61 = call i32 @WREG32(i32 %55, i32 %60)
  %62 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 12
  %68 = call i32 @WREG32(i32 %62, i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 24
  %74 = and i32 %73, 65535
  %75 = shl i32 %74, 16
  store i32 %75, i32* %4, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 24
  %81 = and i32 %80, 65535
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @MC_VM_FB_LOCATION, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load i32, i32* @HDP_NONSURFACE_BASE, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 8
  %93 = call i32 @WREG32(i32 %87, i32 %92)
  %94 = load i32, i32* @HDP_NONSURFACE_INFO, align 4
  %95 = call i32 @WREG32(i32 %94, i32 1073742080)
  %96 = load i32, i32* @HDP_NONSURFACE_SIZE, align 4
  %97 = call i32 @WREG32(i32 %96, i32 1073741823)
  %98 = load i32, i32* @MC_VM_AGP_BASE, align 4
  %99 = call i32 @WREG32(i32 %98, i32 0)
  %100 = load i32, i32* @MC_VM_AGP_TOP, align 4
  %101 = call i32 @WREG32(i32 %100, i32 268435455)
  %102 = load i32, i32* @MC_VM_AGP_BOT, align 4
  %103 = call i32 @WREG32(i32 %102, i32 268435455)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = call i64 @radeon_mc_wait_for_idle(%struct.radeon_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %44
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_warn(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %44
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = call i32 @evergreen_mc_resume(%struct.radeon_device* %113, %struct.evergreen_mc_save* %3)
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %115)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @radeon_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
