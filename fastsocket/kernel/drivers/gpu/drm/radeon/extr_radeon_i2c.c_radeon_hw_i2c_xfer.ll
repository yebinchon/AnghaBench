; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_hw_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_hw_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.radeon_i2c_chan = type { %struct.radeon_i2c_bus_rec, %struct.TYPE_2__* }
%struct.radeon_i2c_bus_rec = type { i32 }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"i2c: unhandled radeon chip\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @radeon_hw_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_hw_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_i2c_chan*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.radeon_i2c_chan* %12, %struct.radeon_i2c_chan** %7, align 8
  %13 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %14 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %8, align 8
  %18 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %18, i32 0, i32 0
  store %struct.radeon_i2c_bus_rec* %19, %struct.radeon_i2c_bus_rec** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %48 [
    i32 167, label %23
    i32 147, label %23
    i32 157, label %23
    i32 146, label %23
    i32 156, label %23
    i32 166, label %23
    i32 145, label %23
    i32 155, label %23
    i32 144, label %23
    i32 165, label %23
    i32 164, label %23
    i32 143, label %23
    i32 142, label %23
    i32 163, label %23
    i32 162, label %23
    i32 141, label %23
    i32 154, label %23
    i32 153, label %23
    i32 152, label %28
    i32 151, label %28
    i32 150, label %28
    i32 140, label %29
    i32 161, label %29
    i32 139, label %29
    i32 138, label %29
    i32 137, label %29
    i32 160, label %29
    i32 159, label %45
    i32 136, label %45
    i32 134, label %45
    i32 132, label %45
    i32 135, label %46
    i32 133, label %46
    i32 149, label %46
    i32 148, label %46
    i32 128, label %46
    i32 130, label %46
    i32 131, label %46
    i32 129, label %46
    i32 171, label %47
    i32 158, label %47
    i32 168, label %47
    i32 170, label %47
    i32 169, label %47
  ]

23:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @r100_hw_i2c_xfer(%struct.i2c_adapter* %24, %struct.i2c_msg* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %52

28:                                               ; preds = %3, %3, %3
  br label %52

29:                                               ; preds = %3, %3, %3, %3, %3, %3
  %30 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @r100_hw_i2c_xfer(%struct.i2c_adapter* %35, %struct.i2c_msg* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @r500_hw_i2c_xfer(%struct.i2c_adapter* %40, %struct.i2c_msg* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %39, %34
  br label %52

45:                                               ; preds = %3, %3, %3, %3
  br label %52

46:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %52

47:                                               ; preds = %3, %3, %3, %3, %3
  br label %52

48:                                               ; preds = %3
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %47, %46, %45, %44, %28, %23
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @r100_hw_i2c_xfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @r500_hw_i2c_xfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
