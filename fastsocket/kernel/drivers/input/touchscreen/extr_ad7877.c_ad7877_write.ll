; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ser_req = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32)* @ad7877_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7877_write(%struct.spi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ser_req*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ser_req* @kzalloc(i32 16, i32 %10)
  store %struct.ser_req* %11, %struct.ser_req** %8, align 8
  %12 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %13 = icmp ne %struct.ser_req* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %19 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %18, i32 0, i32 1
  %20 = call i32 @spi_message_init(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @AD7877_WRITEADD(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_12BIT, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %28 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %30 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %29, i32 0, i32 0
  %31 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %32 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %30, i32** %35, align 8
  %36 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %37 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 2, i32* %40, align 8
  %41 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %42 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %46 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %45, i32 0, i32 1
  %47 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %44, i32* %46)
  %48 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %49 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %50 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %49, i32 0, i32 1
  %51 = call i32 @spi_sync(%struct.spi_device* %48, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %53 = call i32 @kfree(%struct.ser_req* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %17, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.ser_req* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @AD7877_WRITEADD(i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @kfree(%struct.ser_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
