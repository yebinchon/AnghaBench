; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_mm_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_mm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@DMA_STATUS_CTRL = common dso_local global i64 0, align 8
@DMASCR_ERROR_MASK = common dso_local global i32 0, align 4
@DMASCR_CHAIN_COMPLETE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UM_FLAG_NO_BYTE_STATUS = common dso_local global i32 0, align 4
@DMASCR_DMA_COMPLETE = common dso_local global i32 0, align 4
@DMASCR_ANY_ERR = common dso_local global i32 0, align 4
@MEMCTRLCMD_ERRSTATUS = common dso_local global i64 0, align 8
@ERROR_DATA_LOG = common dso_local global i64 0, align 8
@ERROR_ADDR_LOG = common dso_local global i64 0, align 8
@ERROR_COUNT = common dso_local global i64 0, align 8
@ERROR_SYNDROME = common dso_local global i64 0, align 8
@ERROR_CHECK = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Memory access error detected (err count %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Multi-bit EDC error\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Fault Address 0x%02x%08x, Fault Data 0x%08x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Fault Check 0x%02x, Fault Syndrome 0x%02x\0A\00", align 1
@DMASCR_PARITY_ERR_REP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"PARITY ERROR REPORTED\0A\00", align 1
@PCI_STATUS = common dso_local global i32 0, align 4
@DMASCR_PARITY_ERR_DET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"PARITY ERROR DETECTED\0A\00", align 1
@DMASCR_SYSTEM_ERR_SIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"SYSTEM ERROR\0A\00", align 1
@DMASCR_TARGET_ABT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"TARGET ABORT\0A\00", align 1
@DMASCR_MASTER_ABT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"MASTER ABORT\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cardinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.cardinfo*
  store %struct.cardinfo* %18, %struct.cardinfo** %6, align 8
  %19 = call i32 @HW_TRACE(i32 48)
  %20 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %21 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_STATUS_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DMASCR_ERROR_MASK, align 4
  %29 = load i32, i32* @DMASCR_CHAIN_COMPLETE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %308

35:                                               ; preds = %2
  %36 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %37 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @UM_FLAG_NO_BYTE_STATUS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i32, i32* @DMASCR_DMA_COMPLETE, align 4
  %44 = load i32, i32* @DMASCR_CHAIN_COMPLETE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %48 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMA_STATUS_CTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  br label %65

53:                                               ; preds = %35
  %54 = load i32, i32* @DMASCR_DMA_COMPLETE, align 4
  %55 = load i32, i32* @DMASCR_CHAIN_COMPLETE, align 4
  %56 = or i32 %54, %55
  %57 = lshr i32 %56, 16
  %58 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %59 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMA_STATUS_CTRL, align 8
  %62 = add nsw i64 %60, %61
  %63 = add nsw i64 %62, 2
  %64 = call i32 @writeb(i32 %57, i64 %63)
  br label %65

65:                                               ; preds = %53, %42
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DMASCR_ANY_ERR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %184

70:                                               ; preds = %65
  %71 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %72 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MEMCTRLCMD_ERRSTATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i8* @readb(i64 %75)
  %77 = ptrtoint i8* %76 to i8
  store i8 %77, i8* %13, align 1
  %78 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %79 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ERROR_DATA_LOG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  %84 = call i32 @le32_to_cpu(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %86 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ERROR_DATA_LOG, align 8
  %89 = add nsw i64 %87, %88
  %90 = add nsw i64 %89, 4
  %91 = call i32 @readl(i64 %90)
  %92 = call i32 @le32_to_cpu(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %94 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ERROR_ADDR_LOG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl(i64 %97)
  %99 = call i32 @le32_to_cpu(i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %101 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ERROR_ADDR_LOG, align 8
  %104 = add nsw i64 %102, %103
  %105 = add nsw i64 %104, 4
  %106 = call i8* @readb(i64 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %109 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ERROR_COUNT, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i8* @readb(i64 %112)
  %114 = ptrtoint i8* %113 to i8
  store i8 %114, i8* %14, align 1
  %115 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %116 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ERROR_SYNDROME, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i8* @readb(i64 %119)
  %121 = ptrtoint i8* %120 to i8
  store i8 %121, i8* %15, align 1
  %122 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %123 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ERROR_CHECK, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i8* @readb(i64 %126)
  %128 = ptrtoint i8* %127 to i8
  store i8 %128, i8* %16, align 1
  %129 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @dump_dmastat(%struct.cardinfo* %129, i32 %130)
  %132 = load i8, i8* %13, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %70
  %137 = load i32, i32* @KERN_ERR, align 4
  %138 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %139 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %138, i32 0, i32 3
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i8, i8* %14, align 1
  %143 = zext i8 %142 to i32
  %144 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %137, i32* %141, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %136, %70
  %146 = load i8, i8* %13, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 2
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i32, i32* @KERN_ERR, align 4
  %152 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %153 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %152, i32 0, i32 3
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %151, i32* %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %150, %145
  %158 = load i32, i32* @KERN_ERR, align 4
  %159 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %160 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %159, i32 0, i32 3
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %158, i32* %162, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* @KERN_ERR, align 4
  %169 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %170 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %169, i32 0, i32 3
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i8, i8* %16, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* %15, align 1
  %176 = zext i8 %175 to i32
  %177 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %168, i32* %172, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %176)
  %178 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %179 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ERROR_COUNT, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writeb(i32 0, i64 %182)
  br label %184

184:                                              ; preds = %157, %65
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @DMASCR_PARITY_ERR_REP, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %184
  %190 = load i32, i32* @KERN_ERR, align 4
  %191 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %192 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %191, i32 0, i32 3
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %190, i32* %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %196 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %197 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %196, i32 0, i32 3
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load i32, i32* @PCI_STATUS, align 4
  %200 = call i32 @pci_read_config_word(%struct.TYPE_3__* %198, i32 %199, i16* %8)
  %201 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %202 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %201, i32 0, i32 3
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load i32, i32* @PCI_STATUS, align 4
  %205 = load i16, i16* %8, align 2
  %206 = call i32 @pci_write_config_word(%struct.TYPE_3__* %203, i32 %204, i16 zeroext %205)
  br label %207

207:                                              ; preds = %189, %184
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @DMASCR_PARITY_ERR_DET, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %230

212:                                              ; preds = %207
  %213 = load i32, i32* @KERN_ERR, align 4
  %214 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %215 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %214, i32 0, i32 3
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %213, i32* %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %219 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %220 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %219, i32 0, i32 3
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i32, i32* @PCI_STATUS, align 4
  %223 = call i32 @pci_read_config_word(%struct.TYPE_3__* %221, i32 %222, i16* %8)
  %224 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %225 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %224, i32 0, i32 3
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = load i32, i32* @PCI_STATUS, align 4
  %228 = load i16, i16* %8, align 2
  %229 = call i32 @pci_write_config_word(%struct.TYPE_3__* %226, i32 %227, i16 zeroext %228)
  br label %230

230:                                              ; preds = %212, %207
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @DMASCR_SYSTEM_ERR_SIG, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %253

235:                                              ; preds = %230
  %236 = load i32, i32* @KERN_ERR, align 4
  %237 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %238 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %237, i32 0, i32 3
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %236, i32* %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %242 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %243 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %242, i32 0, i32 3
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = load i32, i32* @PCI_STATUS, align 4
  %246 = call i32 @pci_read_config_word(%struct.TYPE_3__* %244, i32 %245, i16* %8)
  %247 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %248 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %247, i32 0, i32 3
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i32, i32* @PCI_STATUS, align 4
  %251 = load i16, i16* %8, align 2
  %252 = call i32 @pci_write_config_word(%struct.TYPE_3__* %249, i32 %250, i16 zeroext %251)
  br label %253

253:                                              ; preds = %235, %230
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @DMASCR_TARGET_ABT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253
  %259 = load i32, i32* @KERN_ERR, align 4
  %260 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %261 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %260, i32 0, i32 3
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %259, i32* %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %265 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %266 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %265, i32 0, i32 3
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %266, align 8
  %268 = load i32, i32* @PCI_STATUS, align 4
  %269 = call i32 @pci_read_config_word(%struct.TYPE_3__* %267, i32 %268, i16* %8)
  %270 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %271 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %270, i32 0, i32 3
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %271, align 8
  %273 = load i32, i32* @PCI_STATUS, align 4
  %274 = load i16, i16* %8, align 2
  %275 = call i32 @pci_write_config_word(%struct.TYPE_3__* %272, i32 %273, i16 zeroext %274)
  br label %276

276:                                              ; preds = %258, %253
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @DMASCR_MASTER_ABT, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %276
  %282 = load i32, i32* @KERN_ERR, align 4
  %283 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %284 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %283, i32 0, i32 3
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %282, i32* %286, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %288 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %289 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %288, i32 0, i32 3
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %289, align 8
  %291 = load i32, i32* @PCI_STATUS, align 4
  %292 = call i32 @pci_read_config_word(%struct.TYPE_3__* %290, i32 %291, i16* %8)
  %293 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %294 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %293, i32 0, i32 3
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %294, align 8
  %296 = load i32, i32* @PCI_STATUS, align 4
  %297 = load i16, i16* %8, align 2
  %298 = call i32 @pci_write_config_word(%struct.TYPE_3__* %295, i32 %296, i16 zeroext %297)
  br label %299

299:                                              ; preds = %281, %276
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %302 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  %303 = load %struct.cardinfo*, %struct.cardinfo** %6, align 8
  %304 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %303, i32 0, i32 2
  %305 = call i32 @tasklet_schedule(i32* %304)
  %306 = call i32 @HW_TRACE(i32 54)
  %307 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %299, %33
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @HW_TRACE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i8* @readb(i64) #1

declare dso_local i32 @dump_dmastat(%struct.cardinfo*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i16*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_3__*, i32, i16 zeroext) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
