; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_update_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.s3c24xx_spi_devstate* }
%struct.s3c24xx_spi_devstate = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.s3c24xx_spi = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid bits-per-word (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPCON_DEFAULT = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@S3C2410_SPCON_CPHA_FMTB = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@S3C2410_SPCON_CPOL_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pre-scaler=%d (wanted %d, got %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @s3c24xx_spi_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_update_state(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.s3c24xx_spi*, align 8
  %7 = alloca %struct.s3c24xx_spi_devstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %14 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %13)
  store %struct.s3c24xx_spi* %14, %struct.s3c24xx_spi** %6, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 4
  %17 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %16, align 8
  store %struct.s3c24xx_spi_devstate* %17, %struct.s3c24xx_spi_devstate** %7, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %19 = icmp ne %struct.spi_transfer* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  store i32 %29, i32* %8, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = icmp ne %struct.spi_transfer* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 8, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 8
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 3
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %140

62:                                               ; preds = %52
  %63 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %7, align 8
  %67 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %62
  %71 = load i32, i32* @SPCON_DEFAULT, align 4
  store i32 %71, i32* %12, align 4
  %72 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SPI_CPHA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @S3C2410_SPCON_CPHA_FMTB, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SPI_CPOL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @S3C2410_SPCON_CPOL_HIGH, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %7, align 8
  %98 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %7, align 8
  %101 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %62
  %103 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %7, align 8
  %104 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %110 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @clk_get_rate(i32 %111)
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %9, align 4
  %115 = mul i32 %114, 2
  %116 = call i32 @DIV_ROUND_UP(i64 %113, i32 %115)
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ugt i32 %118, 255
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  store i32 255, i32* %10, align 4
  br label %121

121:                                              ; preds = %120, %108
  %122 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 3
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i64, i64* %11, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  %129 = mul i32 2, %128
  %130 = zext i32 %129 to i64
  %131 = udiv i64 %126, %130
  %132 = call i32 @dev_dbg(i32* %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125, i64 %131)
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %7, align 8
  %135 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %7, align 8
  %138 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %121, %102
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %55
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
