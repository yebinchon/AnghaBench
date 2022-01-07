; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_beep_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_beep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32, i32, i32 }

@GLOBAL_BEEP_ENABLE_MASK = common dso_local global i32 0, align 4
@GLOBAL_BEEP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_beep_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.w83791d_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %15 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.w83791d_data* %15, %struct.w83791d_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @simple_strtol(i8* %16, i32* null, i32 10)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %19 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @GLOBAL_BEEP_ENABLE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %30 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %34 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GLOBAL_BEEP_ENABLE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %39 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %43 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %49 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @w83791d_write(%struct.i2c_client* %48, i32 %51, i64 %52)
  %54 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %55 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %8, align 8
  ret i64 %57
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
