; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_adt746x.c_attach_thermostat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_adt746x.c_attach_thermostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i64 }
%struct.i2c_board_info = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"uni-n\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@therm_bus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"therm_adt746x\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@therm_address = common dso_local global i32 0, align 4
@thermostat_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @attach_thermostat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_thermostat(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_board_info, align 4
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @strncmp(i64 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 6
  %20 = call i64 @simple_strtoul(i64 %19, i32* null, i32 10)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @therm_bus, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %15
  %28 = call i32 @memset(%struct.i2c_board_info* %5, i32 0, i32 8)
  %29 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I2C_NAME_SIZE, align 4
  %32 = call i32 @strlcpy(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @therm_address, align 4
  %34 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %36 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %35, %struct.i2c_board_info* %5)
  store %struct.i2c_client* %36, %struct.i2c_client** %6, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %38 = icmp ne %struct.i2c_client* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %27
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thermostat_driver, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %39, %24, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @simple_strtoul(i64, i32*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
