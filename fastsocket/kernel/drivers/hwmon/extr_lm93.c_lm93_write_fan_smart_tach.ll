; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_write_fan_smart_tach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_write_fan_smart_tach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32, i32 }

@LM93_REG_SF_TACH_TO_PWM = common dso_local global i32 0, align 4
@LM93_REG_SFC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.lm93_data*, i32, i64)* @lm93_write_fan_smart_tach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_write_fan_smart_tach(%struct.i2c_client* %0, %struct.lm93_data* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.lm93_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.lm93_data* %1, %struct.lm93_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = load i32, i32* @LM93_REG_SF_TACH_TO_PWM, align 4
  %11 = call i8* @lm93_read_byte(%struct.i2c_client* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %14 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 2
  %17 = shl i32 3, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %20 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 2
  %26 = zext i32 %25 to i64
  %27 = shl i64 %23, %26
  %28 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %29 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = or i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load i32, i32* @LM93_REG_SF_TACH_TO_PWM, align 4
  %36 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %37 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @lm93_write_byte(%struct.i2c_client* %34, i32 %35, i64 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* @LM93_REG_SFC2, align 4
  %43 = call i8* @lm93_read_byte(%struct.i2c_client* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %46 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %53 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %64

56:                                               ; preds = %4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %61 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %49
  %65 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %66 = load i32, i32* @LM93_REG_SFC2, align 4
  %67 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %68 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @lm93_write_byte(%struct.i2c_client* %65, i32 %66, i64 %70)
  ret void
}

declare dso_local i8* @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
