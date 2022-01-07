; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm9240_data = type { i32 }

@ADM9240_REG_CONFIG = common dso_local global i32 0, align 4
@ADM9240_REG_TEMP_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Using VRM: %d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"status: config 0x%02x mode %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cold start: config was 0x%02x mode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm9240_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm9240_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adm9240_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.adm9240_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.adm9240_data* %8, %struct.adm9240_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = load i32, i32* @ADM9240_REG_CONFIG, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = load i32, i32* @ADM9240_REG_TEMP_CONF, align 4
  %14 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 %13)
  %15 = and i32 %14, 3
  store i32 %15, i32* %5, align 4
  %16 = call i32 (...) @vid_which_vrm()
  %17 = load %struct.adm9240_data*, %struct.adm9240_data** %3, align 8
  %18 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.adm9240_data*, %struct.adm9240_data** %3, align 8
  %22 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 10
  %25 = load %struct.adm9240_data*, %struct.adm9240_data** %3, align 8
  %26 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %27, 10
  %29 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %76

39:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ADM9240_REG_IN_MIN(i32 %45)
  %47 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %44, i32 %46, i32 0)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ADM9240_REG_IN_MAX(i32 %49)
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %48, i32 %50, i32 255)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %57 = call i32 @ADM9240_REG_FAN_MIN(i32 0)
  %58 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %57, i32 255)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %60 = call i32 @ADM9240_REG_FAN_MIN(i32 1)
  %61 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %59, i32 %60, i32 255)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = call i32 @ADM9240_REG_TEMP_MAX(i32 0)
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %62, i32 %63, i32 127)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %66 = call i32 @ADM9240_REG_TEMP_MAX(i32 1)
  %67 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %65, i32 %66, i32 127)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %69 = load i32, i32* @ADM9240_REG_CONFIG, align 4
  %70 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %68, i32 %69, i32 1)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_info(i32* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %55, %33
  ret void
}

declare dso_local %struct.adm9240_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM9240_REG_IN_MIN(i32) #1

declare dso_local i32 @ADM9240_REG_IN_MAX(i32) #1

declare dso_local i32 @ADM9240_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADM9240_REG_TEMP_MAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
