; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca955x.c_pca955x_write_ls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca955x.c_pca955x_write_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pca955x_led = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @pca955x_write_ls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca955x_write_ls(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pca955x_led*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.pca955x_led* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.pca955x_led* %9, %struct.pca955x_led** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load %struct.pca955x_led*, %struct.pca955x_led** %7, align 8
  %12 = getelementptr inbounds %struct.pca955x_led, %struct.pca955x_led* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pca95xx_num_input_regs(i32 %15)
  %17 = add nsw i64 %16, 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %10, i64 %20, i32 %21)
  ret void
}

declare dso_local %struct.pca955x_led* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i64 @pca95xx_num_input_regs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
