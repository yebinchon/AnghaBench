; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_init_plx9080.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_init_plx9080.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@PLX_CONTROL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" plx interrupt status 0x%x\0A\00", align 1
@PLX_INTRCS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c" plx id bits 0x%x\0A\00", align 1
@PLX_ID_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c" plx control reg 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" plx mode/arbitration reg 0x%x\0A\00", align 1
@PLX_MARB_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c" plx region0 reg 0x%x\0A\00", align 1
@PLX_REGION0_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c" plx region1 reg 0x%x\0A\00", align 1
@PLX_REGION1_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c" plx revision 0x%x\0A\00", align 1
@PLX_REVISION_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c" plx dma channel 0 mode 0x%x\0A\00", align 1
@PLX_DMA0_MODE_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c" plx dma channel 1 mode 0x%x\0A\00", align 1
@PLX_DMA1_MODE_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c" plx dma channel 0 pci address 0x%x\0A\00", align 1
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c" plx dma channel 0 local address 0x%x\0A\00", align 1
@PLX_DMA0_LOCAL_ADDRESS_REG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c" plx dma channel 0 transfer size 0x%x\0A\00", align 1
@PLX_DMA0_TRANSFER_SIZE_REG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c" plx dma channel 0 descriptor 0x%x\0A\00", align 1
@PLX_DMA0_DESCRIPTOR_REG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c" plx dma channel 0 command status 0x%x\0A\00", align 1
@PLX_DMA0_CS_REG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c" plx dma channel 0 threshold 0x%x\0A\00", align 1
@PLX_DMA0_THRESHOLD_REG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c" plx bigend 0x%x\0A\00", align 1
@PLX_BIGEND_REG = common dso_local global i32 0, align 4
@PLX_DMA_EN_READYIN_BIT = common dso_local global i32 0, align 4
@PLX_EN_BTERM_BIT = common dso_local global i32 0, align 4
@PLX_EN_CHAIN_BIT = common dso_local global i32 0, align 4
@PLX_EN_DMA_DONE_INTR_BIT = common dso_local global i32 0, align 4
@PLX_LOCAL_ADDR_CONST_BIT = common dso_local global i32 0, align 4
@PLX_DMA_INTR_PCI_BIT = common dso_local global i32 0, align 4
@PLX_DEMAND_MODE_BIT = common dso_local global i32 0, align 4
@PLX_DMA_LOCAL_BURST_EN_BIT = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@PLX_LOCAL_BUS_32_WIDE_BITS = common dso_local global i32 0, align 4
@PLX_LOCAL_BUS_16_WIDE_BITS = common dso_local global i32 0, align 4
@ICS_AERR = common dso_local global i32 0, align 4
@ICS_PERR = common dso_local global i32 0, align 4
@ICS_PIE = common dso_local global i32 0, align 4
@ICS_PLIE = common dso_local global i32 0, align 4
@ICS_PAIE = common dso_local global i32 0, align 4
@ICS_LIE = common dso_local global i32 0, align 4
@ICS_DMA0_E = common dso_local global i32 0, align 4
@ICS_DMA1_E = common dso_local global i32 0, align 4
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
  %6 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @PLX_CONTROL_REG, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = call i32 @readl(i8* %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @PLX_INTRCS_REG, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %20, i64 %22
  %24 = call i32 @readl(i8* %23)
  %25 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @PLX_ID_REG, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = call i32 @readl(i8* %29)
  %31 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @PLX_MARB_REG, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = call i32 @readl(i8* %40)
  %42 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @PLX_REGION0_REG, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = call i32 @readl(i8* %46)
  %48 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @PLX_REGION1_REG, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = call i32 @readl(i8* %52)
  %54 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @PLX_REVISION_REG, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = call i32 @readl(i8* %58)
  %60 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* @PLX_DMA0_MODE_REG, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  %65 = call i32 @readl(i8* %64)
  %66 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @PLX_DMA1_MODE_REG, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = call i32 @readl(i8* %70)
  %72 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @PLX_DMA0_PCI_ADDRESS_REG, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, i8* %73, i64 %75
  %77 = call i32 @readl(i8* %76)
  %78 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* @PLX_DMA0_LOCAL_ADDRESS_REG, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %79, i64 %81
  %83 = call i32 @readl(i8* %82)
  %84 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* @PLX_DMA0_TRANSFER_SIZE_REG, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %85, i64 %87
  %89 = call i32 @readl(i8* %88)
  %90 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* @PLX_DMA0_DESCRIPTOR_REG, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %91, i64 %93
  %95 = call i32 @readl(i8* %94)
  %96 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* @PLX_DMA0_CS_REG, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %97, i64 %99
  %101 = call i32 @readb(i8* %100)
  %102 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* @PLX_DMA0_THRESHOLD_REG, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %103, i64 %105
  %107 = call i32 @readl(i8* %106)
  %108 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* @PLX_BIGEND_REG, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %109, i64 %111
  %113 = call i32 @readl(i8* %112)
  %114 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %113)
  store i32 0, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %117 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* @PLX_BIGEND_REG, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr i8, i8* %119, i64 %121
  %123 = call i32 @writel(i32 %115, i8* %122)
  %124 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %125 = call i32 @disable_plx_interrupts(%struct.comedi_device* %124)
  %126 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %127 = call i32 @abort_dma(%struct.comedi_device* %126, i32 0)
  %128 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %129 = call i32 @abort_dma(%struct.comedi_device* %128, i32 1)
  store i32 0, i32* %3, align 4
  %130 = load i32, i32* @PLX_DMA_EN_READYIN_BIT, align 4
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* @PLX_EN_BTERM_BIT, align 4
  %134 = load i32, i32* %3, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* @PLX_EN_CHAIN_BIT, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @PLX_EN_DMA_DONE_INTR_BIT, align 4
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* @PLX_LOCAL_ADDR_CONST_BIT, align 4
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* @PLX_DMA_INTR_PCI_BIT, align 4
  %146 = load i32, i32* %3, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* @PLX_DEMAND_MODE_BIT, align 4
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* @PLX_DMA_LOCAL_BURST_EN_BIT, align 4
  %152 = load i32, i32* %3, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %3, align 4
  %154 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %155 = call %struct.TYPE_5__* @board(%struct.comedi_device* %154)
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @LAYOUT_4020, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %1
  %161 = load i32, i32* @PLX_LOCAL_BUS_32_WIDE_BITS, align 4
  %162 = load i32, i32* %3, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %3, align 4
  br label %168

164:                                              ; preds = %1
  %165 = load i32, i32* @PLX_LOCAL_BUS_16_WIDE_BITS, align 4
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i32, i32* %3, align 4
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* @PLX_DMA1_MODE_REG, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr i8, i8* %170, i64 %172
  %174 = call i32 @writel(i32 %169, i8* %173)
  %175 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %176 = call %struct.TYPE_5__* @board(%struct.comedi_device* %175)
  %177 = call i64 @ao_cmd_is_supported(%struct.TYPE_5__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %168
  %180 = load i32, i32* %3, align 4
  %181 = load i8*, i8** %4, align 8
  %182 = load i32, i32* @PLX_DMA0_MODE_REG, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %181, i64 %183
  %185 = call i32 @writel(i32 %180, i8* %184)
  br label %186

186:                                              ; preds = %179, %168
  %187 = load i32, i32* @ICS_AERR, align 4
  %188 = load i32, i32* @ICS_PERR, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @ICS_PIE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @ICS_PLIE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @ICS_PAIE, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @ICS_LIE, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @ICS_DMA0_E, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @ICS_DMA1_E, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %203 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %202)
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 8
  %207 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %208 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %207)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %212 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %211)
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* @PLX_INTRCS_REG, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr i8, i8* %214, i64 %216
  %218 = call i32 @writel(i32 %210, i8* %217)
  ret void
}

declare dso_local %struct.TYPE_4__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

declare dso_local i32 @readb(i8*) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @disable_plx_interrupts(%struct.comedi_device*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

declare dso_local %struct.TYPE_5__* @board(%struct.comedi_device*) #1

declare dso_local i64 @ao_cmd_is_supported(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
