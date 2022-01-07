; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_storegpio1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_storegpio1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.atxp1_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@ATXP1_GPIO1MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Writing 0x%x to GPIO1.\0A\00", align 1
@ATXP1_GPIO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @atxp1_storegpio1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atxp1_storegpio1(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atxp1_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %10, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.atxp1_data* @atxp1_update_device(%struct.device* %14)
  store %struct.atxp1_data* %15, %struct.atxp1_data** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @simple_strtoul(i8* %16, i32* null, i32 16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @ATXP1_GPIO1MASK, align 4
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.atxp1_data*, %struct.atxp1_data** %9, align 8
  %23 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATXP1_GPIO1MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %21, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %34 = load i32, i32* @ATXP1_GPIO1, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %33, i32 %34, i32 %35)
  %37 = load %struct.atxp1_data*, %struct.atxp1_data** %9, align 8
  %38 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %4
  %40 = load i64, i64* %8, align 8
  ret i64 %40
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.atxp1_data* @atxp1_update_device(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
