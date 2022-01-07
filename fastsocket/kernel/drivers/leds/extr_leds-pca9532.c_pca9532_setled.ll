; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_setled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_setled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca9532_led = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.pca9532_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pca9532_led*)* @pca9532_setled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca9532_setled(%struct.pca9532_led* %0) #0 {
  %2 = alloca %struct.pca9532_led*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.pca9532_data*, align 8
  %5 = alloca i8, align 1
  store %struct.pca9532_led* %0, %struct.pca9532_led** %2, align 8
  %6 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %7 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.pca9532_data* %10, %struct.pca9532_data** %4, align 8
  %11 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %12 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %16 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LED_REG(i32 %17)
  %19 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %14, i32 %18)
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %23 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LED_NUM(i32 %24)
  %26 = mul nsw i32 %25, 2
  %27 = shl i32 3, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %21, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %34 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %37 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LED_NUM(i32 %38)
  %40 = mul nsw i32 %39, 2
  %41 = shl i32 %35, %40
  %42 = or i32 %32, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %5, align 1
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = load %struct.pca9532_led*, %struct.pca9532_led** %2, align 8
  %46 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @LED_REG(i32 %47)
  %49 = load i8, i8* %5, align 1
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %44, i32 %48, i8 signext %49)
  %51 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %52 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret void
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @LED_REG(i32) #1

declare dso_local i32 @LED_NUM(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
