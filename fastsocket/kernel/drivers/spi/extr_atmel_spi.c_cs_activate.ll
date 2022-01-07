; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_cs_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_cs_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_spi = type { i32 }
%struct.spi_device = type { i32, i32, i32, %struct.TYPE_2__*, %struct.atmel_spi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.atmel_spi_device = type { i32, i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i64 0, align 8
@MR = common dso_local global i64 0, align 8
@PCS = common dso_local global i32 0, align 4
@MODFDIS = common dso_local global i32 0, align 4
@MSTR = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@CPOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"activate %u%s, mr %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" (high)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_spi*, %struct.spi_device*)* @cs_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_activate(%struct.atmel_spi* %0, %struct.spi_device* %1) #0 {
  %3 = alloca %struct.atmel_spi*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.atmel_spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atmel_spi* %0, %struct.atmel_spi** %3, align 8
  store %struct.spi_device* %1, %struct.spi_device** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 4
  %13 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %12, align 8
  store %struct.atmel_spi_device* %13, %struct.atmel_spi_device** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SPI_CS_HIGH, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = call i64 (...) @atmel_spi_is_v2()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %23 = load i64, i64* @CSR0, align 8
  %24 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @spi_writel(%struct.atmel_spi* %22, i64 %23, i32 %26)
  %28 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %29 = load i64, i64* @MR, align 8
  %30 = load i32, i32* @PCS, align 4
  %31 = call i32 @SPI_BF(i32 %30, i32 14)
  %32 = load i32, i32* @MODFDIS, align 4
  %33 = call i32 @SPI_BIT(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @MSTR, align 4
  %36 = call i32 @SPI_BIT(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @spi_writel(%struct.atmel_spi* %28, i64 %29, i32 %37)
  %39 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %40 = load i64, i64* @MR, align 8
  %41 = call i32 @spi_readl(%struct.atmel_spi* %39, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %43 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @gpio_set_value(i32 %44, i32 %45)
  br label %126

47:                                               ; preds = %2
  %48 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SPI_CPOL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @CPOL, align 4
  %56 = call i32 @SPI_BIT(i32 %55)
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %96, %58
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %60
  %69 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %70 = load i64, i64* @CSR0, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 4, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = call i32 @spi_readl(%struct.atmel_spi* %69, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = xor i32 %76, %77
  %79 = load i32, i32* @CPOL, align 4
  %80 = call i32 @SPI_BIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %68
  %84 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %85 = load i64, i64* @CSR0, align 8
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 4, %86
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @CPOL, align 4
  %92 = call i32 @SPI_BIT(i32 %91)
  %93 = xor i32 %90, %92
  %94 = call i32 @spi_writel(%struct.atmel_spi* %84, i64 %89, i32 %93)
  br label %95

95:                                               ; preds = %83, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %60

99:                                               ; preds = %60
  %100 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %101 = load i64, i64* @MR, align 8
  %102 = call i32 @spi_readl(%struct.atmel_spi* %100, i64 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @PCS, align 4
  %104 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 1, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @SPI_BFINS(i32 %103, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %99
  %116 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %117 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @gpio_set_value(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %99
  %122 = load %struct.atmel_spi*, %struct.atmel_spi** %3, align 8
  %123 = load i64, i64* @MR, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @spi_writel(%struct.atmel_spi* %122, i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %21
  %127 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %128 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %127, i32 0, i32 2
  %129 = load %struct.atmel_spi_device*, %struct.atmel_spi_device** %5, align 8
  %130 = getelementptr inbounds %struct.atmel_spi_device, %struct.atmel_spi_device* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @dev_dbg(i32* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %131, i8* %135, i32 %136)
  ret void
}

declare dso_local i64 @atmel_spi_is_v2(...) #1

declare dso_local i32 @spi_writel(%struct.atmel_spi*, i64, i32) #1

declare dso_local i32 @SPI_BF(i32, i32) #1

declare dso_local i32 @SPI_BIT(i32) #1

declare dso_local i32 @spi_readl(%struct.atmel_spi*, i64) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @SPI_BFINS(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
