; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_spu_set_bus_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_spu_set_bus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32 }

@IF_SPI_SPU_BUS_MODE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read bus mode register.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*, i32)* @spu_set_bus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_set_bus_mode(%struct.if_spi_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_spi_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.if_spi_card* %0, %struct.if_spi_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %9 = load i32, i32* @IF_SPI_SPU_BUS_MODE_REG, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @spu_write_u16(%struct.if_spi_card* %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %18 = load i32, i32* @IF_SPI_SPU_BUS_MODE_REG, align 4
  %19 = call i32 @spu_read_u16(%struct.if_spi_card* %17, i32 %18, i32* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 15
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %22, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @spu_write_u16(%struct.if_spi_card*, i32, i32) #1

declare dso_local i32 @spu_read_u16(%struct.if_spi_card*, i32, i32*) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
