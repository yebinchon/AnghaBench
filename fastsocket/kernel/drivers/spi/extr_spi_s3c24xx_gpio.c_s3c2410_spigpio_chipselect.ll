; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx_gpio.c_s3c2410_spigpio_chipselect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx_gpio.c_s3c2410_spigpio_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.s3c2410_spigpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @s3c2410_spigpio_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_spigpio_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_spigpio*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.s3c2410_spigpio* @spidev_to_sg(%struct.spi_device* %6)
  store %struct.s3c2410_spigpio* %7, %struct.s3c2410_spigpio** %5, align 8
  %8 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %5, align 8
  %9 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %5, align 8
  %14 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_2__*, i32)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %5, align 8
  %21 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %23, align 8
  %25 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %5, align 8
  %26 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %24(%struct.TYPE_2__* %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %12, %2
  ret void
}

declare dso_local %struct.s3c2410_spigpio* @spidev_to_sg(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
