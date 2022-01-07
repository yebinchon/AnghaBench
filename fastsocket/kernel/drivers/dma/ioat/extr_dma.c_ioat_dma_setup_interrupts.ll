; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_dma_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_dma_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { i64, {}*, %struct.msix_entry*, %struct.TYPE_2__, %struct.pci_dev* }
%struct.msix_entry = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ioat_chan_common = type { i64, i32 (%struct.ioatdma_device*)*, %struct.msix_entry*, %struct.TYPE_2__, %struct.pci_dev* }

@EINVAL = common dso_local global i32 0, align 4
@ioat_interrupt_style = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"msix\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"msix-single-vector\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"intx\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid ioat_interrupt_style %s\0A\00", align 1
@ioat_dma_do_interrupt_msix = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ioat-msix\00", align 1
@IOAT_INTRCTRL_MSIX_VECTOR_CONTROL = common dso_local global i32 0, align 4
@ioat_dma_do_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ioat-msi\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"ioat-intx\00", align 1
@IOAT_INTRCTRL_MASTER_INT_EN = common dso_local global i32 0, align 4
@IOAT_INTRCTRL_OFFSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"no usable interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioatdma_device*)* @ioat_dma_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_dma_setup_interrupts(%struct.ioatdma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioatdma_device*, align 8
  %4 = alloca %struct.ioat_chan_common*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.msix_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %3, align 8
  %13 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %14 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %13, i32 0, i32 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @ioat_interrupt_style, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %43

24:                                               ; preds = %1
  %25 = load i32, i32* @ioat_interrupt_style, align 4
  %26 = call i32 @strcmp(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %139

29:                                               ; preds = %24
  %30 = load i32, i32* @ioat_interrupt_style, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %168

34:                                               ; preds = %29
  %35 = load i32, i32* @ioat_interrupt_style, align 4
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %188

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* @ioat_interrupt_style, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %225

43:                                               ; preds = %23
  %44 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %45 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %61, %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %55 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %54, i32 0, i32 2
  %56 = load %struct.msix_entry*, %struct.msix_entry** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %56, i64 %58
  %60 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %67 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %66, i32 0, i32 2
  %68 = load %struct.msix_entry*, %struct.msix_entry** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pci_enable_msix(%struct.pci_dev* %65, %struct.msix_entry* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %168

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %139

78:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %132, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %135

83:                                               ; preds = %79
  %84 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %85 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %84, i32 0, i32 2
  %86 = load %struct.msix_entry*, %struct.msix_entry** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %86, i64 %88
  store %struct.msix_entry* %89, %struct.msix_entry** %7, align 8
  %90 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call %struct.ioatdma_device* @ioat_chan_by_index(%struct.ioatdma_device* %90, i32 %91)
  %93 = bitcast %struct.ioatdma_device* %92 to %struct.ioat_chan_common*
  store %struct.ioat_chan_common* %93, %struct.ioat_chan_common** %4, align 8
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load %struct.msix_entry*, %struct.msix_entry** %7, align 8
  %96 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ioat_dma_do_interrupt_msix, align 4
  %99 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %100 = bitcast %struct.ioat_chan_common* %99 to %struct.ioatdma_device*
  %101 = call i32 @devm_request_irq(%struct.device* %94, i32 %97, i32 %98, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ioatdma_device* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %111 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %110, i32 0, i32 2
  %112 = load %struct.msix_entry*, %struct.msix_entry** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %112, i64 %114
  store %struct.msix_entry* %115, %struct.msix_entry** %7, align 8
  %116 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call %struct.ioatdma_device* @ioat_chan_by_index(%struct.ioatdma_device* %116, i32 %117)
  %119 = bitcast %struct.ioatdma_device* %118 to %struct.ioat_chan_common*
  store %struct.ioat_chan_common* %119, %struct.ioat_chan_common** %4, align 8
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = load %struct.msix_entry*, %struct.msix_entry** %7, align 8
  %122 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %125 = bitcast %struct.ioat_chan_common* %124 to %struct.ioatdma_device*
  %126 = call i32 @devm_free_irq(%struct.device* %120, i32 %123, %struct.ioatdma_device* %125)
  br label %127

127:                                              ; preds = %109
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %105

130:                                              ; preds = %105
  br label %139

131:                                              ; preds = %83
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %79

135:                                              ; preds = %79
  %136 = load i32, i32* @IOAT_INTRCTRL_MSIX_VECTOR_CONTROL, align 4
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %201

139:                                              ; preds = %130, %77, %28
  %140 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %141 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %140, i32 0, i32 2
  %142 = load %struct.msix_entry*, %struct.msix_entry** %141, align 8
  %143 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %142, i64 0
  store %struct.msix_entry* %143, %struct.msix_entry** %7, align 8
  %144 = load %struct.msix_entry*, %struct.msix_entry** %7, align 8
  %145 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %147 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %148 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %147, i32 0, i32 2
  %149 = load %struct.msix_entry*, %struct.msix_entry** %148, align 8
  %150 = call i32 @pci_enable_msix(%struct.pci_dev* %146, %struct.msix_entry* %149, i32 1)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  br label %168

154:                                              ; preds = %139
  %155 = load %struct.device*, %struct.device** %6, align 8
  %156 = load %struct.msix_entry*, %struct.msix_entry** %7, align 8
  %157 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ioat_dma_do_interrupt, align 4
  %160 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %161 = call i32 @devm_request_irq(%struct.device* %155, i32 %158, i32 %159, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ioatdma_device* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %166 = call i32 @pci_disable_msix(%struct.pci_dev* %165)
  br label %168

167:                                              ; preds = %154
  br label %201

168:                                              ; preds = %164, %153, %73, %33
  %169 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %170 = call i32 @pci_enable_msi(%struct.pci_dev* %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %188

174:                                              ; preds = %168
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ioat_dma_do_interrupt, align 4
  %180 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %181 = call i32 @devm_request_irq(%struct.device* %175, i32 %178, i32 %179, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.ioatdma_device* %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %174
  %185 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %186 = call i32 @pci_disable_msi(%struct.pci_dev* %185)
  br label %188

187:                                              ; preds = %174
  br label %201

188:                                              ; preds = %184, %173, %38
  %189 = load %struct.device*, %struct.device** %6, align 8
  %190 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %191 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ioat_dma_do_interrupt, align 4
  %194 = load i32, i32* @IRQF_SHARED, align 4
  %195 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %196 = call i32 @devm_request_irq(%struct.device* %189, i32 %192, i32 %193, i32 %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.ioatdma_device* %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %225

200:                                              ; preds = %188
  br label %201

201:                                              ; preds = %200, %187, %167, %135
  %202 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %203 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %202, i32 0, i32 1
  %204 = bitcast {}** %203 to i32 (%struct.ioatdma_device*)**
  %205 = load i32 (%struct.ioatdma_device*)*, i32 (%struct.ioatdma_device*)** %204, align 8
  %206 = icmp ne i32 (%struct.ioatdma_device*)* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %209 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %208, i32 0, i32 1
  %210 = bitcast {}** %209 to i32 (%struct.ioatdma_device*)**
  %211 = load i32 (%struct.ioatdma_device*)*, i32 (%struct.ioatdma_device*)** %210, align 8
  %212 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %213 = call i32 %211(%struct.ioatdma_device* %212)
  br label %214

214:                                              ; preds = %207, %201
  %215 = load i32, i32* @IOAT_INTRCTRL_MASTER_INT_EN, align 4
  %216 = load i32, i32* %12, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %220 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @IOAT_INTRCTRL_OFFSET, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writeb(i32 %218, i64 %223)
  store i32 0, i32* %2, align 4
  br label %235

225:                                              ; preds = %199, %39
  %226 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %227 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @IOAT_INTRCTRL_OFFSET, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writeb(i32 0, i64 %230)
  %232 = load %struct.device*, %struct.device** %6, align 8
  %233 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %225, %214
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.msix_entry*, i32) #1

declare dso_local %struct.ioatdma_device* @ioat_chan_by_index(%struct.ioatdma_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.ioatdma_device*) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i32, %struct.ioatdma_device*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
