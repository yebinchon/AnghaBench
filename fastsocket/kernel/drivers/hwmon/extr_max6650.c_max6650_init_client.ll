; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_max6650_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_max6650_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max6650_data = type { i32, i8* }

@EIO = common dso_local global i32 0, align 4
@MAX6650_REG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading config, aborting.\0A\00", align 1
@fan_voltage = common dso_local global i32 0, align 4
@MAX6650_CFG_V12 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"illegal value for fan_voltage (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Fan voltage is set to %dV.\0A\00", align 1
@prescaler = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_MASK = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_2 = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_4 = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_8 = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"illegal value for prescaler (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Prescaler is set to %d.\0A\00", align 1
@MAX6650_CFG_MODE_MASK = common dso_local global i32 0, align 4
@MAX6650_CFG_MODE_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Change mode to open loop, full off.\0A\00", align 1
@MAX6650_CFG_MODE_OPEN_LOOP = common dso_local global i32 0, align 4
@MAX6650_REG_DAC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"DAC write error, aborting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Config write error, aborting.\0A\00", align 1
@MAX6650_REG_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max6650_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max6650_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.max6650_data* %8, %struct.max6650_data** %4, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load i32, i32* @MAX6650_REG_CONFIG, align 4
  %13 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %142

22:                                               ; preds = %1
  %23 = load i32, i32* @fan_voltage, align 4
  switch i32 %23, label %34 [
    i32 0, label %24
    i32 5, label %25
    i32 12, label %30
  ]

24:                                               ; preds = %22
  br label %39

25:                                               ; preds = %22
  %26 = load i32, i32* @MAX6650_CFG_V12, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %22
  %31 = load i32, i32* @MAX6650_CFG_V12, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %22
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @fan_voltage, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %30, %25, %24
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MAX6650_CFG_V12, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 12, i32 5
  %48 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @prescaler, align 4
  switch i32 %49, label %84 [
    i32 0, label %50
    i32 1, label %51
    i32 2, label %56
    i32 4, label %63
    i32 8, label %70
    i32 16, label %77
  ]

50:                                               ; preds = %39
  br label %89

51:                                               ; preds = %39
  %52 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %89

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* @MAX6650_CFG_PRESCALER_2, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %5, align 4
  br label %89

63:                                               ; preds = %39
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @MAX6650_CFG_PRESCALER_4, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %5, align 4
  br label %89

70:                                               ; preds = %39
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* @MAX6650_CFG_PRESCALER_8, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %5, align 4
  br label %89

77:                                               ; preds = %39
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load i32, i32* @MAX6650_CFG_PRESCALER_16, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %5, align 4
  br label %89

84:                                               ; preds = %39
  %85 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* @prescaler, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %77, %70, %63, %56, %51, %50
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %94 = and i32 %92, %93
  %95 = shl i32 1, %94
  %96 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @MAX6650_CFG_MODE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @MAX6650_CFG_MODE_OFF, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %89
  %103 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = call i32 @dev_dbg(i32* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @MAX6650_CFG_MODE_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* @MAX6650_CFG_MODE_OPEN_LOOP, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %113 = load i32, i32* @MAX6650_REG_DAC, align 4
  %114 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %112, i32 %113, i32 255)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %142

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %124 = load i32, i32* @MAX6650_REG_CONFIG, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %123, i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %142

133:                                              ; preds = %122
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %136 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = load i32, i32* @MAX6650_REG_COUNT, align 4
  %139 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %137, i32 %138)
  %140 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %141 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %133, %128, %116, %17
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
