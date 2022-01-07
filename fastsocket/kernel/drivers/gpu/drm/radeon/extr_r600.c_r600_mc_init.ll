; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_mc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }

@RAMCFG = common dso_local global i32 0, align 4
@CHANSIZE_OVERRIDE = common dso_local global i32 0, align 4
@CHANSIZE_MASK = common dso_local global i32 0, align 4
@CHMAP = common dso_local global i32 0, align 4
@NOOFCHAN_MASK = common dso_local global i32 0, align 4
@NOOFCHAN_SHIFT = common dso_local global i32 0, align 4
@CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @RAMCFG, align 4
  %10 = call i8* @RREG32(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CHANSIZE_OVERRIDE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CHANSIZE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 64, i32* %4, align 4
  br label %24

23:                                               ; preds = %17
  store i32 32, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* @CHMAP, align 4
  %27 = call i8* @RREG32(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @NOOFCHAN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @NOOFCHAN_SHIFT, align 4
  %33 = ashr i32 %31, %32
  switch i32 %33, label %35 [
    i32 0, label %34
    i32 1, label %36
    i32 2, label %37
    i32 3, label %38
  ]

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %25, %34
  store i32 1, i32* %5, align 4
  br label %39

36:                                               ; preds = %25
  store i32 2, i32* %5, align 4
  br label %39

37:                                               ; preds = %25
  store i32 4, i32* %5, align 4
  br label %39

38:                                               ; preds = %25
  store i32 8, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37, %36, %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_resource_start(i32 %48, i32 0)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 8
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pci_resource_len(i32 %55, i32 0)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %61 = call i8* @RREG32(i32 %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %66 = call i8* @RREG32(i32 %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  store i8* %66, i8** %69, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = call i32 @r600_vram_gtt_location(%struct.radeon_device* %77, %struct.TYPE_2__* %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RADEON_IS_IGP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %39
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = call i32 @rs690_pm_info(%struct.radeon_device* %88)
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = call i32 @radeon_atombios_sideport_present(%struct.radeon_device* %90)
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %39
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %96)
  ret i32 0
}

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @r600_vram_gtt_location(%struct.radeon_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @rs690_pm_info(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_sideport_present(%struct.radeon_device*) #1

declare dso_local i32 @radeon_update_bandwidth_info(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
