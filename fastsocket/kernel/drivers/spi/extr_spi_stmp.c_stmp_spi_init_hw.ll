; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp_spi = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmp_spi*)* @stmp_spi_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp_spi_init_hw(%struct.stmp_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmp_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.stmp_spi* %0, %struct.stmp_spi** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %7 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %13 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @dev_name(%struct.TYPE_2__* %14)
  %16 = call i32 @stmp3xxx_request_pin_group(i8* %11, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %54

20:                                               ; preds = %1
  %21 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %23 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %25 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %31 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %20
  %35 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %36 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_enable(i32 %37)
  %39 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %40 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @stmp3xxx_reset_block(i32 %41, i32 0)
  %43 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %44 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @stmp3xxx_dma_reset_channel(i32 %45)
  store i32 0, i32* %2, align 4
  br label %56

47:                                               ; preds = %29
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.stmp_spi*, %struct.stmp_spi** %3, align 8
  %50 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @dev_name(%struct.TYPE_2__* %51)
  %53 = call i32 @stmp3xxx_release_pin_group(i8* %48, i32 %52)
  br label %54

54:                                               ; preds = %47, %19
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %34
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @stmp3xxx_request_pin_group(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @stmp3xxx_reset_block(i32, i32) #1

declare dso_local i32 @stmp3xxx_dma_reset_channel(i32) #1

declare dso_local i32 @stmp3xxx_release_pin_group(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
