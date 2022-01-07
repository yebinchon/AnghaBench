; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_setup_cs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_setup_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.chip_data = type { i32, i32, i64 }
%struct.pxa2xx_spi_chip = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"SPI_CS\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to request chip select GPIO%d\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.chip_data*, %struct.pxa2xx_spi_chip*)* @setup_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cs(%struct.spi_device* %0, %struct.chip_data* %1, %struct.pxa2xx_spi_chip* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.chip_data*, align 8
  %7 = alloca %struct.pxa2xx_spi_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.chip_data* %1, %struct.chip_data** %6, align 8
  store %struct.pxa2xx_spi_chip* %2, %struct.pxa2xx_spi_chip** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %10 = icmp eq %struct.chip_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %13 = icmp eq %struct.pxa2xx_spi_chip* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %83

15:                                               ; preds = %11
  %16 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %17 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @gpio_is_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %23 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpio_free(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %28 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %33 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %36 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %83

37:                                               ; preds = %26
  %38 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %39 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @gpio_is_valid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %45 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @gpio_request(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 1
  %53 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %54 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %83

58:                                               ; preds = %43
  %59 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %7, align 8
  %60 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %63 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SPI_CS_HIGH, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %70 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %72 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %75 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @gpio_direction_output(i32 %73, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %58, %37
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %50, %31, %14
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
