; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-viapro.c_vt596_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-viapro.c_vt596_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_PROC_CALL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@vt596_features = common dso_local global i32 0, align 4
@FEATURE_I2CBLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @vt596_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt596_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %5 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I2C_SMBUS_PROC_CALL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @vt596_features, align 4
  %16 = load i32, i32* @FEATURE_I2CBLOCK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
