; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i801_priv = type { i32 }

@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_I2C_BLOCK = common dso_local global i32 0, align 4
@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_PEC = common dso_local global i32 0, align 4
@FEATURE_I2C_BLOCK_READ = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i801_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i801_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = call %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter* %4)
  store %struct.i801_priv* %5, %struct.i801_priv** %3, align 8
  %6 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %7 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_I2C_BLOCK, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %18 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @I2C_FUNC_SMBUS_PEC, align 4
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = or i32 %16, %27
  %29 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %30 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FEATURE_I2C_BLOCK_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = or i32 %28, %39
  ret i32 %40
}

declare dso_local %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
