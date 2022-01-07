; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_spu_set_interrupt_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_spu_set_interrupt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32 }

@IF_SPI_HOST_INT_STATUS_MASK_REG = common dso_local global i32 0, align 4
@IF_SPI_HISM_TX_DOWNLOAD_RDY = common dso_local global i32 0, align 4
@IF_SPI_HISM_RX_UPLOAD_RDY = common dso_local global i32 0, align 4
@IF_SPI_HISM_CMD_DOWNLOAD_RDY = common dso_local global i32 0, align 4
@IF_SPI_HISM_CARDEVENT = common dso_local global i32 0, align 4
@IF_SPI_HISM_CMD_UPLOAD_RDY = common dso_local global i32 0, align 4
@IF_SPI_HOST_INT_CTRL_REG = common dso_local global i32 0, align 4
@IF_SPI_HICT_TX_DOWNLOAD_OVER_AUTO = common dso_local global i32 0, align 4
@IF_SPI_HICT_RX_UPLOAD_OVER_AUTO = common dso_local global i32 0, align 4
@IF_SPI_HICT_CMD_DOWNLOAD_OVER_AUTO = common dso_local global i32 0, align 4
@IF_SPI_HICT_CMD_UPLOAD_OVER_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*, i32, i32)* @spu_set_interrupt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_set_interrupt_mode(%struct.if_spi_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_spi_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.if_spi_card* %0, %struct.if_spi_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %13 = load i32, i32* @IF_SPI_HOST_INT_STATUS_MASK_REG, align 4
  %14 = call i32 @spu_write_u16(%struct.if_spi_card* %12, i32 %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %11
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %22 = load i32, i32* @IF_SPI_HOST_INT_STATUS_MASK_REG, align 4
  %23 = load i32, i32* @IF_SPI_HISM_TX_DOWNLOAD_RDY, align 4
  %24 = load i32, i32* @IF_SPI_HISM_RX_UPLOAD_RDY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IF_SPI_HISM_CMD_DOWNLOAD_RDY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IF_SPI_HISM_CARDEVENT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IF_SPI_HISM_CMD_UPLOAD_RDY, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @spu_write_u16(%struct.if_spi_card* %21, i32 %22, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %43 = load i32, i32* @IF_SPI_HOST_INT_CTRL_REG, align 4
  %44 = load i32, i32* @IF_SPI_HICT_TX_DOWNLOAD_OVER_AUTO, align 4
  %45 = load i32, i32* @IF_SPI_HICT_RX_UPLOAD_OVER_AUTO, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IF_SPI_HICT_CMD_DOWNLOAD_OVER_AUTO, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IF_SPI_HICT_CMD_UPLOAD_OVER_AUTO, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @spu_write_u16(%struct.if_spi_card* %42, i32 %43, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %68

56:                                               ; preds = %41
  br label %66

57:                                               ; preds = %38
  %58 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %59 = load i32, i32* @IF_SPI_HOST_INT_STATUS_MASK_REG, align 4
  %60 = call i32 @spu_write_u16(%struct.if_spi_card* %58, i32 %59, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %63, %54, %35, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @spu_write_u16(%struct.if_spi_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
