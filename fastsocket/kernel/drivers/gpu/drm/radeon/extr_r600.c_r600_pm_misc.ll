; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pm_misc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pm_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.radeon_power_state* }
%struct.radeon_power_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.radeon_voltage }
%struct.radeon_voltage = type { i64, i32 }

@VOLTAGE_SW = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Setting: v: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_pm_misc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_power_state*, align 8
  %6 = alloca %struct.radeon_voltage*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load %struct.radeon_power_state*, %struct.radeon_power_state** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %18, i64 %20
  store %struct.radeon_power_state* %21, %struct.radeon_power_state** %5, align 8
  %22 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.radeon_voltage* %28, %struct.radeon_voltage** %6, align 8
  %29 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VOLTAGE_SW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %1
  %35 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %34
  %40 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 65281
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %72

45:                                               ; preds = %39
  %46 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %60 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %55, i32 %58, i32 %59)
  %61 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %54, %45
  br label %72

72:                                               ; preds = %44, %71, %34, %1
  ret void
}

declare dso_local i32 @radeon_atom_set_voltage(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
