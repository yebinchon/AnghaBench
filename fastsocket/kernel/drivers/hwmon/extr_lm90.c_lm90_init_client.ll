; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i64, i32 }

@LM90_REG_W_CONVRATE = common dso_local global i32 0, align 4
@LM90_REG_R_CONFIG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Initialization failed!\0A\00", align 1
@adt7461 = common dso_local global i64 0, align 8
@LM90_FLAG_ADT7461_EXT = common dso_local global i32 0, align 4
@max6680 = common dso_local global i64 0, align 8
@LM90_REG_W_CONFIG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @lm90_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm90_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm90_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.lm90_data* %7, %struct.lm90_data** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = load i32, i32* @LM90_REG_W_CONVRATE, align 4
  %10 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %8, i32 %9, i32 5)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = load i32, i32* @LM90_REG_R_CONFIG1, align 4
  %13 = call i64 @lm90_read_reg(%struct.i2c_client* %11, i32 %12, i32* %3)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %57

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %22 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @adt7461, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @LM90_FLAG_ADT7461_EXT, align 4
  %32 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %33 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %39 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @max6680, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, 24
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 191
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %54 = load i32, i32* @LM90_REG_W_CONFIG1, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %15, %52, %46
  ret void
}

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @lm90_read_reg(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
