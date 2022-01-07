; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_read_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"w83l785ts: \00", align 1
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%sRead 0x%02x from register 0x%02x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%sRead failed, will retry in %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%sCouldn't read value from register 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @w83l785ts_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l785ts_read_value(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call i64 @i2c_get_clientdata(%struct.i2c_client* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %10, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %23

23:                                               ; preds = %18, %15
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAX_RETRIES, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %57

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @msleep(i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %34
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
