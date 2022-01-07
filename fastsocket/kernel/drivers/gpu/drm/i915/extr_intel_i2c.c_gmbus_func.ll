; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.i2c_adapter*)* }
%struct.i2c_adapter = type { i32 }

@i2c_bit_algo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_EMUL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_PROC_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @gmbus_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %3 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i2c_bit_algo, i32 0, i32 0), align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = call i32 %3(%struct.i2c_adapter* %4)
  %6 = load i32, i32* @I2C_FUNC_I2C, align 4
  %7 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_PROC_CALL, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %5, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
