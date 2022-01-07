; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_isl29003.c_isl29003_get_adc_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_isl29003.c_isl29003_get_adc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.isl29003_data = type { i32 }

@ISL29003_REG_LSB_SENSOR = common dso_local global i32 0, align 4
@ISL29003_REG_MSB_SENSOR = common dso_local global i32 0, align 4
@gain_range = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @isl29003_get_adc_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29003_get_adc_value(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.isl29003_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.isl29003_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.isl29003_data* %10, %struct.isl29003_data** %4, align 8
  %11 = load %struct.isl29003_data*, %struct.isl29003_data** %4, align 8
  %12 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = load i32, i32* @ISL29003_REG_LSB_SENSOR, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.isl29003_data*, %struct.isl29003_data** %4, align 8
  %21 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = load i32, i32* @ISL29003_REG_MSB_SENSOR, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.isl29003_data*, %struct.isl29003_data** %4, align 8
  %29 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = call i32 @isl29003_get_range(%struct.i2c_client* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = call i32 @isl29003_get_resolution(%struct.i2c_client* %38)
  %40 = sub nsw i32 4, %39
  %41 = mul nsw i32 %40, 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** @gain_range, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %35, %33, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.isl29003_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @isl29003_get_range(%struct.i2c_client*) #1

declare dso_local i32 @isl29003_get_resolution(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
