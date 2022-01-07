; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_spi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64 }

@REG_SPI_DATA = common dso_local global i64 0, align 8
@REG_SPI_ADDR = common dso_local global i64 0, align 8
@SPI_FLASH_CTRL_WAIT_READY = common dso_local global i32 0, align 4
@CUSTOM_SPI_CS_SETUP = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_SETUP_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_SETUP_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CLK_HI = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_HI_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_HI_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CLK_LO = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_LO_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_LO_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CS_HOLD = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HOLD_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HOLD_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CS_HI = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HI_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HI_SHIFT = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_INS_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_INS_SHIFT = common dso_local global i32 0, align 4
@REG_SPI_FLASH_CTRL = common dso_local global i64 0, align 8
@SPI_FLASH_CTRL_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_hw*, i32, i32*)* @atl1_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_spi_read(%struct.atl1_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %11 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_SPI_DATA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @iowrite32(i32 0, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %18 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_SPI_ADDR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite32(i32 %16, i64 %21)
  %23 = load i32, i32* @SPI_FLASH_CTRL_WAIT_READY, align 4
  %24 = load i32, i32* @CUSTOM_SPI_CS_SETUP, align 4
  %25 = load i32, i32* @SPI_FLASH_CTRL_CS_SETUP_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SPI_FLASH_CTRL_CS_SETUP_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* @CUSTOM_SPI_CLK_HI, align 4
  %31 = load i32, i32* @SPI_FLASH_CTRL_CLK_HI_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @SPI_FLASH_CTRL_CLK_HI_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load i32, i32* @CUSTOM_SPI_CLK_LO, align 4
  %37 = load i32, i32* @SPI_FLASH_CTRL_CLK_LO_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SPI_FLASH_CTRL_CLK_LO_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %35, %40
  %42 = load i32, i32* @CUSTOM_SPI_CS_HOLD, align 4
  %43 = load i32, i32* @SPI_FLASH_CTRL_CS_HOLD_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SPI_FLASH_CTRL_CS_HOLD_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %41, %46
  %48 = load i32, i32* @CUSTOM_SPI_CS_HI, align 4
  %49 = load i32, i32* @SPI_FLASH_CTRL_CS_HI_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SPI_FLASH_CTRL_CS_HI_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %47, %52
  %54 = load i32, i32* @SPI_FLASH_CTRL_INS_MASK, align 4
  %55 = and i32 1, %54
  %56 = load i32, i32* @SPI_FLASH_CTRL_INS_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %53, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %61 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @iowrite32(i32 %59, i64 %64)
  %66 = load i32, i32* @SPI_FLASH_CTRL_START, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %71 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @iowrite32(i32 %69, i64 %74)
  %76 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %77 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @ioread32(i64 %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %99, %3
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 10
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = call i32 @msleep(i32 1)
  %87 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %88 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @ioread32(i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SPI_FLASH_CTRL_START, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %85
  br label %102

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %82

102:                                              ; preds = %97, %82
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @SPI_FLASH_CTRL_START, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %116

108:                                              ; preds = %102
  %109 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %110 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @REG_SPI_DATA, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @ioread32(i64 %113)
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %108, %107
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
