; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.atmel_spi_device*, i32, i32 }
%struct.atmel_spi_device = type { i32 }
%struct.atmel_spi = type { i32, %struct.spi_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @atmel_spi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_spi_cleanup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.atmel_spi*, align 8
  %4 = alloca %struct.atmel_spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.atmel_spi* @spi_master_get_devdata(i32 %9)
  store %struct.atmel_spi* %10, %struct.atmel_spi** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %12, align 8
  store %struct.atmel_spi_device* %13, %struct.atmel_spi_device** %4, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %4, align 8
  %18 = icmp ne %struct.atmel_spi_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %25, i32 0, i32 1
  %27 = load %struct.spi_device*, %struct.spi_device** %26, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %29 = icmp eq %struct.spi_device* %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %31, i32 0, i32 1
  store %struct.spi_device* null, %struct.spi_device** %32, align 8
  %33 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %35 = call i32 @cs_deactivate(%struct.atmel_spi* %33, %struct.spi_device* %34)
  br label %36

36:                                               ; preds = %30, %20
  %37 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  store %struct.atmel_spi_device* null, %struct.atmel_spi_device** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @gpio_free(i32 %43)
  %45 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %4, align 8
  %46 = call i32 @kfree(%struct.atmel_spi_device* %45)
  br label %47

47:                                               ; preds = %36, %19
  ret void
}

declare dso_local %struct.atmel_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cs_deactivate(%struct.atmel_spi*, %struct.spi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.atmel_spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
