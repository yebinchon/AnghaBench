; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_beep_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_beep_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32, i32, i32 }

@GLOBAL_BEEP_ENABLE_MASK = common dso_local global i32 0, align 4
@GLOBAL_BEEP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_beep_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.w83791d_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.w83791d_data* %16, %struct.w83791d_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @simple_strtol(i8* %17, i32* null, i32 10)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %20 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @BEEP_MASK_TO_REG(i64 %22)
  %24 = load i32, i32* @GLOBAL_BEEP_ENABLE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %28 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %30 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GLOBAL_BEEP_ENABLE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %35 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %39 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %57, %4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %47 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %11, align 8
  %53 = and i64 %52, 255
  %54 = call i32 @w83791d_write(%struct.i2c_client* %46, i32 %51, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = ashr i64 %55, 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.w83791d_data*, %struct.w83791d_data** %10, align 8
  %62 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %61, i32 0, i32 2
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BEEP_MASK_TO_REG(i64) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
