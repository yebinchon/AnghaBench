; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iic_cook_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iic_cook_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.i2c_msg*)* @iic_cook_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @iic_cook_addr(%struct.i2c_msg* %0) #0 {
  %2 = alloca %struct.i2c_msg*, align 8
  %3 = alloca i8, align 1
  store %struct.i2c_msg* %0, %struct.i2c_msg** %2, align 8
  %4 = load %struct.i2c_msg*, %struct.i2c_msg** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 1
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %3, align 1
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %2, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_M_RD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, 1
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %2, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i8, i8* %3, align 1
  ret i8 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
