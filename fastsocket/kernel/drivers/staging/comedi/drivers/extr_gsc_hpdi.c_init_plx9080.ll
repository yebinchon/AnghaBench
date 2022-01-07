; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_init_plx9080.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_init_plx9080.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [28 x i8] c" plx interrupt status 0x%x\0A\00", align 1
@PLX_INTRCS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c" plx id bits 0x%x\0A\00", align 1
@PLX_ID_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c" plx control reg 0x%x\0A\00", align 1
@PLX_CONTROL_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c" plx revision 0x%x\0A\00", align 1
@PLX_REVISION_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c" plx dma channel 0 mode 0x%x\0A\00", align 1
@PLX_DMA0_MODE_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c" plx dma channel 1 mode 0x%x\0A\00", align 1
@PLX_DMA1_MODE_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c" plx dma channel 0 pci address 0x%x\0A\00", align 1
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c" plx dma channel 0 local address 0x%x\0A\00", align 1
@PLX_DMA0_LOCAL_ADDRESS_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c" plx dma channel 0 transfer size 0x%x\0A\00", align 1
@PLX_DMA0_TRANSFER_SIZE_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c" plx dma channel 0 descriptor 0x%x\0A\00", align 1
@PLX_DMA0_DESCRIPTOR_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c" plx dma channel 0 command status 0x%x\0A\00", align 1
@PLX_DMA0_CS_REG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c" plx dma channel 0 threshold 0x%x\0A\00", align 1
@PLX_DMA0_THRESHOLD_REG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c" plx bigend 0x%x\0A\00", align 1
@PLX_BIGEND_REG = common dso_local global i32 0, align 4
@PLX_DMA_EN_READYIN_BIT = common dso_local global i32 0, align 4
@PLX_EN_CHAIN_BIT = common dso_local global i32 0, align 4
@PLX_EN_DMA_DONE_INTR_BIT = common dso_local global i32 0, align 4
@PLX_LOCAL_ADDR_CONST_BIT = common dso_local global i32 0, align 4
@PLX_DMA_INTR_PCI_BIT = common dso_local global i32 0, align 4
@PLX_DEMAND_MODE_BIT = common dso_local global i32 0, align 4
@PLX_DMA_LOCAL_BURST_EN_BIT = common dso_local global i32 0, align 4
@PLX_LOCAL_BUS_32_WIDE_BITS = common dso_local global i32 0, align 4
@BIGEND_DMA0 = common dso_local global i32 0, align 4
@BIGEND_DMA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @init_plx9080 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_plx9080(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @PLX_INTRCS_REG, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %9, i64 %11
  %13 = call i32 @readl(i8* %12)
  %14 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @PLX_ID_REG, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %15, i64 %17
  %19 = call i32 @readl(i8* %18)
  %20 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @PLX_CONTROL_REG, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = call i32 @readl(i8* %27)
  %29 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @PLX_REVISION_REG, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = call i32 @readl(i8* %33)
  %35 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @PLX_DMA0_MODE_REG, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = call i32 @readl(i8* %39)
  %41 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @PLX_DMA1_MODE_REG, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = call i32 @readl(i8* %45)
  %47 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @PLX_DMA0_PCI_ADDRESS_REG, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = call i32 @readl(i8* %51)
  %53 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @PLX_DMA0_LOCAL_ADDRESS_REG, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = call i32 @readl(i8* %57)
  %59 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @PLX_DMA0_TRANSFER_SIZE_REG, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = call i32 @readl(i8* %63)
  %65 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* @PLX_DMA0_DESCRIPTOR_REG, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = call i32 @readl(i8* %69)
  %71 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* @PLX_DMA0_CS_REG, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = call i32 @readb(i8* %75)
  %77 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @PLX_DMA0_THRESHOLD_REG, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  %82 = call i32 @readl(i8* %81)
  %83 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* @PLX_BIGEND_REG, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = call i32 @readl(i8* %87)
  %89 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %88)
  store i32 0, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %92 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @PLX_BIGEND_REG, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %94, i64 %96
  %98 = call i32 @writel(i32 %90, i8* %97)
  %99 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %100 = call i32 @disable_plx_interrupts(%struct.comedi_device* %99)
  %101 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %102 = call i32 @abort_dma(%struct.comedi_device* %101, i32 0)
  %103 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %104 = call i32 @abort_dma(%struct.comedi_device* %103, i32 1)
  store i32 0, i32* %3, align 4
  %105 = load i32, i32* @PLX_DMA_EN_READYIN_BIT, align 4
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* @PLX_EN_CHAIN_BIT, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* @PLX_EN_DMA_DONE_INTR_BIT, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* @PLX_LOCAL_ADDR_CONST_BIT, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* @PLX_DMA_INTR_PCI_BIT, align 4
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @PLX_DEMAND_MODE_BIT, align 4
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* @PLX_DMA_LOCAL_BURST_EN_BIT, align 4
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* @PLX_LOCAL_BUS_32_WIDE_BITS, align 4
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* @PLX_DMA0_MODE_REG, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr i8, i8* %130, i64 %132
  %134 = call i32 @writel(i32 %129, i8* %133)
  ret void
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @readb(i8*) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @disable_plx_interrupts(%struct.comedi_device*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
