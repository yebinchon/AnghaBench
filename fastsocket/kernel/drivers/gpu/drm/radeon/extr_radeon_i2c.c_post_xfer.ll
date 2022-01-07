; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_post_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_post_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.radeon_i2c_chan = type { %struct.radeon_i2c_bus_rec, %struct.TYPE_2__* }
%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @post_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_xfer(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.radeon_i2c_chan*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = call %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %7)
  store %struct.radeon_i2c_chan* %8, %struct.radeon_i2c_chan** %3, align 8
  %9 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %4, align 8
  %14 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %14, i32 0, i32 0
  store %struct.radeon_i2c_bus_rec* %15, %struct.radeon_i2c_bus_rec** %5, align 8
  %16 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @WREG32(i32 %27, i32 %28)
  %30 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @RREG32(i32 %36)
  %38 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %6, align 4
  ret void
}

declare dso_local %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
