; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_setpwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_setpwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pca9532_data = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @pca9532_setpwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_setpwm(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pca9532_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.pca9532_data* %7, %struct.pca9532_data** %5, align 8
  %8 = load %struct.pca9532_data*, %struct.pca9532_data** %5, align 8
  %9 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @PCA9532_REG_PWM(i32 %12)
  %14 = load %struct.pca9532_data*, %struct.pca9532_data** %5, align 8
  %15 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %11, i32 %13, i32 %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PCA9532_REG_PSC(i32 %23)
  %25 = load %struct.pca9532_data*, %struct.pca9532_data** %5, align 8
  %26 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %22, i32 %24, i32 %31)
  %33 = load %struct.pca9532_data*, %struct.pca9532_data** %5, align 8
  %34 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret i32 0
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @PCA9532_REG_PWM(i32) #1

declare dso_local i32 @PCA9532_REG_PSC(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
