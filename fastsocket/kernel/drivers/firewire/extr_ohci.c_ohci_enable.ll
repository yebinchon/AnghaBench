; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32, i32, i32, i32, %struct.TYPE_2__, i64*, i64*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to reset ohci card.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OHCI1394_HCControlSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_LPS = common dso_local global i32 0, align 4
@OHCI1394_HCControl_postedWriteEnable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set Link Power Status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OHCI1394_HCControlClear = common dso_local global i32 0, align 4
@OHCI1394_HCControl_noByteSwapData = common dso_local global i32 0, align 4
@OHCI1394_SelfIDBuffer = common dso_local global i32 0, align 4
@OHCI1394_LinkControlClear = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_rcvPhyPkt = common dso_local global i32 0, align 4
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_rcvSelfID = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleTimerEnable = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleMaster = common dso_local global i32 0, align 4
@OHCI1394_ATRetries = common dso_local global i32 0, align 4
@OHCI1394_MAX_AT_REQ_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_MAX_AT_RESP_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_MAX_PHYS_RESP_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_PhyUpperBound = common dso_local global i32 0, align 4
@OHCI1394_IntEventClear = common dso_local global i32 0, align 4
@OHCI1394_IntMaskClear = common dso_local global i32 0, align 4
@OHCI1394_IntMaskSet = common dso_local global i32 0, align 4
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@OHCI1394_isochRx = common dso_local global i32 0, align 4
@OHCI1394_isochTx = common dso_local global i32 0, align 4
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@OHCI1394_cycle64Seconds = common dso_local global i32 0, align 4
@OHCI1394_regAccessFail = common dso_local global i32 0, align 4
@OHCI1394_masterIntEnable = common dso_local global i32 0, align 4
@param_debug = common dso_local global i32 0, align 4
@OHCI_PARAM_DEBUG_BUSRESETS = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@PHY_LINK_ACTIVE = common dso_local global i32 0, align 4
@PHY_CONTENDER = common dso_local global i32 0, align 4
@CONFIG_ROM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OHCI1394_ConfigROMhdr = common dso_local global i32 0, align 4
@OHCI1394_BusOptions = common dso_local global i32 0, align 4
@OHCI1394_ConfigROMmap = common dso_local global i32 0, align 4
@OHCI1394_AsReqFilterHiSet = common dso_local global i32 0, align 4
@irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ohci_driver_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to allocate shared interrupt %d.\0A\00", align 1
@OHCI1394_HCControl_linkEnable = common dso_local global i32 0, align 4
@OHCI1394_HCControl_BIBimageValid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32*, i64)* @ohci_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_enable(%struct.fw_card* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fw_ohci*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %13 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %12)
  store %struct.fw_ohci* %13, %struct.fw_ohci** %8, align 8
  %14 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %15 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %19 = call i64 @software_reset(%struct.fw_ohci* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %274

25:                                               ; preds = %3
  %26 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %27 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %28 = load i32, i32* @OHCI1394_HCControl_LPS, align 4
  %29 = load i32, i32* @OHCI1394_HCControl_postedWriteEnable, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @reg_write(%struct.fw_ohci* %26, i32 %27, i32 %30)
  %32 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %33 = call i32 @flush_writes(%struct.fw_ohci* %32)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %49, %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 3
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  %43 = call i32 @msleep(i32 50)
  %44 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %45 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %46 = call i32 @reg_read(%struct.fw_ohci* %44, i32 %45)
  %47 = load i32, i32* @OHCI1394_HCControl_LPS, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %34

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %274

59:                                               ; preds = %52
  %60 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %61 = load i32, i32* @OHCI1394_HCControlClear, align 4
  %62 = load i32, i32* @OHCI1394_HCControl_noByteSwapData, align 4
  %63 = call i32 @reg_write(%struct.fw_ohci* %60, i32 %61, i32 %62)
  %64 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %65 = load i32, i32* @OHCI1394_SelfIDBuffer, align 4
  %66 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %67 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @reg_write(%struct.fw_ohci* %64, i32 %65, i32 %68)
  %70 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %71 = load i32, i32* @OHCI1394_LinkControlClear, align 4
  %72 = load i32, i32* @OHCI1394_LinkControl_rcvPhyPkt, align 4
  %73 = call i32 @reg_write(%struct.fw_ohci* %70, i32 %71, i32 %72)
  %74 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %75 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %76 = load i32, i32* @OHCI1394_LinkControl_rcvSelfID, align 4
  %77 = load i32, i32* @OHCI1394_LinkControl_cycleTimerEnable, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @reg_write(%struct.fw_ohci* %74, i32 %75, i32 %80)
  %82 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %83 = load i32, i32* @OHCI1394_ATRetries, align 4
  %84 = load i32, i32* @OHCI1394_MAX_AT_REQ_RETRIES, align 4
  %85 = load i32, i32* @OHCI1394_MAX_AT_RESP_RETRIES, align 4
  %86 = shl i32 %85, 4
  %87 = or i32 %84, %86
  %88 = load i32, i32* @OHCI1394_MAX_PHYS_RESP_RETRIES, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %87, %89
  %91 = call i32 @reg_write(%struct.fw_ohci* %82, i32 %83, i32 %90)
  %92 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %93 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %92, i32 0, i32 8
  %94 = call i32 @ar_context_run(i32* %93)
  %95 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %96 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %95, i32 0, i32 7
  %97 = call i32 @ar_context_run(i32* %96)
  %98 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %99 = load i32, i32* @OHCI1394_PhyUpperBound, align 4
  %100 = call i32 @reg_write(%struct.fw_ohci* %98, i32 %99, i32 65536)
  %101 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %102 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %103 = call i32 @reg_write(%struct.fw_ohci* %101, i32 %102, i32 -1)
  %104 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %105 = load i32, i32* @OHCI1394_IntMaskClear, align 4
  %106 = call i32 @reg_write(%struct.fw_ohci* %104, i32 %105, i32 -1)
  %107 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %108 = load i32, i32* @OHCI1394_IntMaskSet, align 4
  %109 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %110 = load i32, i32* @OHCI1394_RQPkt, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @OHCI1394_RSPkt, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @OHCI1394_isochRx, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @OHCI1394_isochTx, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @OHCI1394_cycle64Seconds, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @OHCI1394_regAccessFail, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @OHCI1394_masterIntEnable, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @reg_write(%struct.fw_ohci* %107, i32 %108, i32 %133)
  %135 = load i32, i32* @param_debug, align 4
  %136 = load i32, i32* @OHCI_PARAM_DEBUG_BUSRESETS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %59
  %140 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %141 = load i32, i32* @OHCI1394_IntMaskSet, align 4
  %142 = load i32, i32* @OHCI1394_busReset, align 4
  %143 = call i32 @reg_write(%struct.fw_ohci* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %59
  %145 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %146 = load i32, i32* @PHY_LINK_ACTIVE, align 4
  %147 = load i32, i32* @PHY_CONTENDER, align 4
  %148 = or i32 %146, %147
  %149 = call i64 @ohci_update_phy_reg(%struct.fw_card* %145, i32 4, i32 0, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %274

154:                                              ; preds = %144
  %155 = load i32*, i32** %6, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %189

157:                                              ; preds = %154
  %158 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %159 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %163 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %164 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %163, i32 0, i32 1
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i64* @dma_alloc_coherent(i32 %161, i32 %162, i32* %164, i32 %165)
  %167 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %168 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %167, i32 0, i32 6
  store i64* %166, i64** %168, align 8
  %169 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %170 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %169, i32 0, i32 6
  %171 = load i64*, i64** %170, align 8
  %172 = icmp eq i64* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %157
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %274

176:                                              ; preds = %157
  %177 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %178 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %177, i32 0, i32 6
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %181 = call i32 @memset(i64* %179, i32 0, i32 %180)
  %182 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %183 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %182, i32 0, i32 6
  %184 = load i64*, i64** %183, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i64, i64* %7, align 8
  %187 = mul i64 %186, 4
  %188 = call i32 @fw_memcpy_to_be32(i64* %184, i32* %185, i64 %187)
  br label %200

189:                                              ; preds = %154
  %190 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %191 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %190, i32 0, i32 5
  %192 = load i64*, i64** %191, align 8
  %193 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %194 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %193, i32 0, i32 6
  store i64* %192, i64** %194, align 8
  %195 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %196 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %199 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %176
  %201 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %202 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %201, i32 0, i32 6
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @be32_to_cpu(i64 %205)
  %207 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %208 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %210 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %209, i32 0, i32 6
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  store i64 0, i64* %212, align 8
  %213 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %214 = load i32, i32* @OHCI1394_ConfigROMhdr, align 4
  %215 = call i32 @reg_write(%struct.fw_ohci* %213, i32 %214, i32 0)
  %216 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %217 = load i32, i32* @OHCI1394_BusOptions, align 4
  %218 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %219 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %218, i32 0, i32 6
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 2
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @be32_to_cpu(i64 %222)
  %224 = call i32 @reg_write(%struct.fw_ohci* %216, i32 %217, i32 %223)
  %225 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %226 = load i32, i32* @OHCI1394_ConfigROMmap, align 4
  %227 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %228 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @reg_write(%struct.fw_ohci* %225, i32 %226, i32 %229)
  %231 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %232 = load i32, i32* @OHCI1394_AsReqFilterHiSet, align 4
  %233 = call i32 @reg_write(%struct.fw_ohci* %231, i32 %232, i32 -2147483648)
  %234 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @irq_handler, align 4
  %238 = load i32, i32* @IRQF_SHARED, align 4
  %239 = load i32, i32* @ohci_driver_name, align 4
  %240 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %241 = call i64 @request_irq(i32 %236, i32 %237, i32 %238, i32 %239, %struct.fw_ohci* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %200
  %244 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %246)
  %248 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %249 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %253 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %254 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %253, i32 0, i32 5
  %255 = load i64*, i64** %254, align 8
  %256 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %257 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @dma_free_coherent(i32 %251, i32 %252, i64* %255, i32 %258)
  %260 = load i32, i32* @EIO, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %4, align 4
  br label %274

262:                                              ; preds = %200
  %263 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %264 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %265 = load i32, i32* @OHCI1394_HCControl_linkEnable, align 4
  %266 = load i32, i32* @OHCI1394_HCControl_BIBimageValid, align 4
  %267 = or i32 %265, %266
  %268 = call i32 @reg_write(%struct.fw_ohci* %263, i32 %264, i32 %267)
  %269 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %270 = call i32 @flush_writes(%struct.fw_ohci* %269)
  %271 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %272 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %271, i32 0, i32 4
  %273 = call i32 @fw_core_initiate_bus_reset(%struct.TYPE_2__* %272, i32 1)
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %262, %243, %173, %151, %55, %21
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @software_reset(%struct.fw_ohci*) #1

declare dso_local i32 @fw_error(i8*, ...) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @ar_context_run(i32*) #1

declare dso_local i64 @ohci_update_phy_reg(%struct.fw_card*, i32, i32, i32) #1

declare dso_local i64* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @fw_memcpy_to_be32(i64*, i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.fw_ohci*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @fw_core_initiate_bus_reset(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
