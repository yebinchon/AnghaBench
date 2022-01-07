; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_txx9.c_txx9spi_cs_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_txx9.c_txx9spi_cs_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.txx9spi = type { i32, i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.txx9spi*, i32, i32)* @txx9spi_cs_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9spi_cs_func(%struct.spi_device* %0, %struct.txx9spi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.txx9spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.txx9spi* %1, %struct.txx9spi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_CS_HIGH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.txx9spi*, %struct.txx9spi** %6, align 8
  %29 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.txx9spi*, %struct.txx9spi** %6, align 8
  %34 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.txx9spi*, %struct.txx9spi** %6, align 8
  %37 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @gpio_set_value(i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.txx9spi*, %struct.txx9spi** %6, align 8
  %48 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.txx9spi*, %struct.txx9spi** %6, align 8
  %51 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %23
  %53 = load %struct.txx9spi*, %struct.txx9spi** %6, align 8
  %54 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ndelay(i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  %58 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @gpio_set_value(i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ndelay(i32 %63)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
