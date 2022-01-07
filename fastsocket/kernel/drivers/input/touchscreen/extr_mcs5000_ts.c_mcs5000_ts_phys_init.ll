; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_mcs5000_ts.c_mcs5000_ts_phys_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_mcs5000_ts.c_mcs5000_ts_phys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs5000_ts_data = type { %struct.i2c_client*, %struct.mcs5000_ts_platform_data* }
%struct.i2c_client = type { i32 }
%struct.mcs5000_ts_platform_data = type { i32, i32 }

@MCS5000_TS_OP_MODE = common dso_local global i32 0, align 4
@RESET_EXT_SOFT = common dso_local global i32 0, align 4
@OP_MODE_SLEEP = common dso_local global i32 0, align 4
@MCS5000_TS_X_SIZE_UPPER = common dso_local global i32 0, align 4
@MCS5000_TS_X_SIZE_LOWER = common dso_local global i32 0, align 4
@MCS5000_TS_Y_SIZE_UPPER = common dso_local global i32 0, align 4
@MCS5000_TS_Y_SIZE_LOWER = common dso_local global i32 0, align 4
@OP_MODE_ACTIVE = common dso_local global i32 0, align 4
@REPORT_RATE_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcs5000_ts_data*)* @mcs5000_ts_phys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs5000_ts_phys_init(%struct.mcs5000_ts_data* %0) #0 {
  %2 = alloca %struct.mcs5000_ts_data*, align 8
  %3 = alloca %struct.mcs5000_ts_platform_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.mcs5000_ts_data* %0, %struct.mcs5000_ts_data** %2, align 8
  %5 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %2, align 8
  %6 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %5, i32 0, i32 1
  %7 = load %struct.mcs5000_ts_platform_data*, %struct.mcs5000_ts_platform_data** %6, align 8
  store %struct.mcs5000_ts_platform_data* %7, %struct.mcs5000_ts_platform_data** %3, align 8
  %8 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %2, align 8
  %9 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @MCS5000_TS_OP_MODE, align 4
  %13 = load i32, i32* @RESET_EXT_SOFT, align 4
  %14 = load i32, i32* @OP_MODE_SLEEP, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %11, i32 %12, i32 %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* @MCS5000_TS_X_SIZE_UPPER, align 4
  %19 = load %struct.mcs5000_ts_platform_data*, %struct.mcs5000_ts_platform_data** %3, align 8
  %20 = getelementptr inbounds %struct.mcs5000_ts_platform_data, %struct.mcs5000_ts_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %17, i32 %18, i32 %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @MCS5000_TS_X_SIZE_LOWER, align 4
  %26 = load %struct.mcs5000_ts_platform_data*, %struct.mcs5000_ts_platform_data** %3, align 8
  %27 = getelementptr inbounds %struct.mcs5000_ts_platform_data, %struct.mcs5000_ts_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %24, i32 %25, i32 %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @MCS5000_TS_Y_SIZE_UPPER, align 4
  %33 = load %struct.mcs5000_ts_platform_data*, %struct.mcs5000_ts_platform_data** %3, align 8
  %34 = getelementptr inbounds %struct.mcs5000_ts_platform_data, %struct.mcs5000_ts_platform_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %31, i32 %32, i32 %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @MCS5000_TS_Y_SIZE_LOWER, align 4
  %40 = load %struct.mcs5000_ts_platform_data*, %struct.mcs5000_ts_platform_data** %3, align 8
  %41 = getelementptr inbounds %struct.mcs5000_ts_platform_data, %struct.mcs5000_ts_platform_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 %39, i32 %43)
  %45 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %2, align 8
  %46 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %45, i32 0, i32 0
  %47 = load %struct.i2c_client*, %struct.i2c_client** %46, align 8
  %48 = load i32, i32* @MCS5000_TS_OP_MODE, align 4
  %49 = load i32, i32* @OP_MODE_ACTIVE, align 4
  %50 = load i32, i32* @REPORT_RATE_80, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
