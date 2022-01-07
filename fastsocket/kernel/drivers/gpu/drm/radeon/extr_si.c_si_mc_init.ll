; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_mc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32 }

@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@CHANSIZE_OVERRIDE = common dso_local global i32 0, align 4
@CHANSIZE_MASK = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP = common dso_local global i32 0, align 4
@NOOFCHAN_MASK = common dso_local global i32 0, align 4
@NOOFCHAN_SHIFT = common dso_local global i32 0, align 4
@CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %10 = call i64 @RREG32(i32 %9)
  %11 = trunc i64 %10 to i32
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
  %26 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %27 = call i64 @RREG32(i32 %26)
  %28 = trunc i64 %27 to i32
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
    i32 4, label %39
    i32 5, label %40
    i32 6, label %41
    i32 7, label %42
    i32 8, label %43
  ]

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %25, %34
  store i32 1, i32* %5, align 4
  br label %44

36:                                               ; preds = %25
  store i32 2, i32* %5, align 4
  br label %44

37:                                               ; preds = %25
  store i32 4, i32* %5, align 4
  br label %44

38:                                               ; preds = %25
  store i32 8, i32* %5, align 4
  br label %44

39:                                               ; preds = %25
  store i32 3, i32* %5, align 4
  br label %44

40:                                               ; preds = %25
  store i32 6, i32* %5, align 4
  br label %44

41:                                               ; preds = %25
  store i32 10, i32* %5, align 4
  br label %44

42:                                               ; preds = %25
  store i32 12, i32* %5, align 4
  br label %44

43:                                               ; preds = %25
  store i32 16, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38, %37, %36, %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pci_resource_start(i32 %53, i32 0)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  store i32 %54, i32* %57, align 8
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_resource_len(i32 %60, i32 0)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %66 = call i64 @RREG32(i32 %65)
  %67 = mul i64 %66, 1024
  %68 = mul i64 %67, 1024
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %73 = call i64 @RREG32(i32 %72)
  %74 = mul i64 %73, 1024
  %75 = mul i64 %74, 1024
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i64 %75, i64* %78, align 8
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 4
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = call i32 @si_vram_gtt_location(%struct.radeon_device* %86, %struct.TYPE_2__* %88)
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %90)
  ret i32 0
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @si_vram_gtt_location(%struct.radeon_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @radeon_update_bandwidth_info(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
