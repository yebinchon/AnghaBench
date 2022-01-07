; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_lm63_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_lm63_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm63_data = type { i32, i32, i32 }

@LM63_REG_CONFIG1 = common dso_local global i32 0, align 4
@LM63_REG_CONFIG_FAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Switching to operational mode\0A\00", align 1
@LM63_REG_PWM_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Alert/tach pin configured for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"tachometer input\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"alert output\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"PWM clock %s kHz, output frequency %u Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1.4\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"360\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"PWM output active %s, %s mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @lm63_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm63_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lm63_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.lm63_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.lm63_data* %5, %struct.lm63_data** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = load i32, i32* @LM63_REG_CONFIG1, align 4
  %8 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %11 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = load i32, i32* @LM63_REG_CONFIG_FAN, align 4
  %14 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %17 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %19 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 64
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %28 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 167
  store i32 %30, i32* %28, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = load i32, i32* @LM63_REG_CONFIG1, align 4
  %33 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %34 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %23, %1
  %38 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %39 = load i32, i32* @LM63_REG_PWM_FREQ, align 4
  %40 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %43 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %45 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %50 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %55 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %65 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 8
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %71 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %72 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 8
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 700, i32 180000
  %78 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %79 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %77, %80
  %82 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32 %81)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %86 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 16
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %92 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %93 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 32
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %99 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %91, i8* %98)
  ret void
}

declare dso_local %struct.lm63_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
