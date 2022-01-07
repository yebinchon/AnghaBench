; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32 }

@CHIP_PALM = common dso_local global i64 0, align 8
@CHIP_SUMO = common dso_local global i64 0, align 8
@CHIP_SUMO2 = common dso_local global i64 0, align 8
@FUS_MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@CHANSIZE_OVERRIDE = common dso_local global i32 0, align 4
@CHANSIZE_MASK = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP = common dso_local global i32 0, align 4
@NOOFCHAN_MASK = common dso_local global i32 0, align 4
@NOOFCHAN_SHIFT = common dso_local global i32 0, align 4
@CONFIG_MEMSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_PALM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_SUMO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_SUMO2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %14, %1
  %27 = load i32, i32* @FUS_MC_ARB_RAMCFG, align 4
  %28 = call i64 @RREG32(i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %32 = call i64 @RREG32(i32 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CHANSIZE_OVERRIDE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 16, i32* %4, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @CHANSIZE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 64, i32* %4, align 4
  br label %47

46:                                               ; preds = %40
  store i32 32, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %50 = call i64 @RREG32(i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @NOOFCHAN_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @NOOFCHAN_SHIFT, align 4
  %56 = ashr i32 %54, %55
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %59
    i32 2, label %60
    i32 3, label %61
  ]

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %48, %57
  store i32 1, i32* %5, align 4
  br label %62

59:                                               ; preds = %48
  store i32 2, i32* %5, align 4
  br label %62

60:                                               ; preds = %48
  store i32 4, i32* %5, align 4
  br label %62

61:                                               ; preds = %48
  store i32 8, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60, %59, %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pci_resource_start(i32 %71, i32 0)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  store i32 %72, i32* %75, align 8
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pci_resource_len(i32 %78, i32 0)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CHIP_PALM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %62
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CHIP_SUMO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CHIP_SUMO2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94, %88, %62
  %101 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %102 = call i64 @RREG32(i32 %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %107 = call i64 @RREG32(i32 %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i64 %107, i64* %110, align 8
  br label %126

111:                                              ; preds = %94
  %112 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %113 = call i64 @RREG32(i32 %112)
  %114 = mul i64 %113, 1024
  %115 = mul i64 %114, 1024
  %116 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i64 %115, i64* %118, align 8
  %119 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %120 = call i64 @RREG32(i32 %119)
  %121 = mul i64 %120, 1024
  %122 = mul i64 %121, 1024
  %123 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i64 %122, i64* %125, align 8
  br label %126

126:                                              ; preds = %111, %100
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  store i32 %130, i32* %133, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 1
  %137 = call i32 @r700_vram_gtt_location(%struct.radeon_device* %134, %struct.TYPE_2__* %136)
  %138 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %139 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %138)
  ret i32 0
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @r700_vram_gtt_location(%struct.radeon_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @radeon_update_bandwidth_info(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
