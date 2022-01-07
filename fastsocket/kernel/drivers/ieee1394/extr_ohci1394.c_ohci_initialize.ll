; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OHCI1394_BusOptions = common dso_local global i32 0, align 4
@hpsb_disable_irm = common dso_local global i64 0, align 8
@OHCI1394_NodeID = common dso_local global i32 0, align 4
@OHCI1394_HCControlSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_postedWriteEnable = common dso_local global i32 0, align 4
@OHCI1394_LinkControlClear = common dso_local global i32 0, align 4
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_CycleTimerEnable = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_CycleMaster = common dso_local global i32 0, align 4
@PHY_04_LCTRL = common dso_local global i32 0, align 4
@PHY_04_CONTENDER = common dso_local global i32 0, align 4
@OHCI1394_SelfIDBuffer = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_RcvSelfID = common dso_local global i32 0, align 4
@OHCI1394_ConfigROMmap = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntMaskClear = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntEventClear = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntMaskClear = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntEventClear = common dso_local global i32 0, align 4
@OHCI1394_AsReqFilterHiSet = common dso_local global i32 0, align 4
@OHCI1394_PhyUpperBound = common dso_local global i32 0, align 4
@OHCI1394_PHYS_UPPER_BOUND_PROGRAMMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"physUpperBoundOffset=%08x\00", align 1
@OHCI1394_ATRetries = common dso_local global i32 0, align 4
@OHCI1394_MAX_AT_REQ_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_MAX_AT_RESP_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_MAX_PHYS_RESP_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_HCControlClear = common dso_local global i32 0, align 4
@OHCI1394_HCControl_noByteSwap = common dso_local global i32 0, align 4
@OHCI1394_IntMaskSet = common dso_local global i32 0, align 4
@OHCI1394_unrecoverableError = common dso_local global i32 0, align 4
@OHCI1394_masterIntEnable = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@OHCI1394_isochRx = common dso_local global i32 0, align 4
@OHCI1394_isochTx = common dso_local global i32 0, align 4
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@OHCI1394_HCControl_linkEnable = common dso_local global i32 0, align 4
@OHCI1394_Version = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"OHCI-1394 %d.%d (PCI): IRQ=[%d]  MMIO=[%llx-%llx]  Max Packet=[%d]  IR/IT contexts=[%d/%d]\00", align 1
@OHCI1394_REGISTER_SIZE = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"Serial EEPROM has suspicious values, attempting to set max_packet_size to 512 bytes\00", align 1
@OHCI1394_GUID_ROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_ohci*)* @ohci_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_initialize(%struct.ti_ohci* %0) #0 {
  %2 = alloca %struct.ti_ohci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %2, align 8
  %7 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %8 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %7, i32 0, i32 10
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %11 = load i32, i32* @OHCI1394_BusOptions, align 4
  %12 = call i32 @reg_read(%struct.ti_ohci* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, 1610612736
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* @hpsb_disable_irm, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, -2147483648
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, -16711681
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -402653185
  store i32 %27, i32* %3, align 4
  %28 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %29 = load i32, i32* @OHCI1394_BusOptions, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @reg_write(%struct.ti_ohci* %28, i32 %29, i32 %30)
  %32 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %33 = load i32, i32* @OHCI1394_NodeID, align 4
  %34 = call i32 @reg_write(%struct.ti_ohci* %32, i32 %33, i32 65472)
  %35 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %36 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %37 = load i32, i32* @OHCI1394_HCControl_postedWriteEnable, align 4
  %38 = call i32 @reg_write(%struct.ti_ohci* %35, i32 %36, i32 %37)
  %39 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %40 = load i32, i32* @OHCI1394_LinkControlClear, align 4
  %41 = call i32 @reg_write(%struct.ti_ohci* %39, i32 %40, i32 -1)
  %42 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %43 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %44 = load i32, i32* @OHCI1394_LinkControl_CycleTimerEnable, align 4
  %45 = load i32, i32* @OHCI1394_LinkControl_CycleMaster, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @reg_write(%struct.ti_ohci* %42, i32 %43, i32 %46)
  %48 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %49 = call i32 @get_phy_reg(%struct.ti_ohci* %48, i32 4)
  %50 = load i32, i32* @PHY_04_LCTRL, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i64, i64* @hpsb_disable_irm, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %23
  %55 = load i32, i32* @PHY_04_CONTENDER, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %23
  %60 = load i32, i32* @PHY_04_CONTENDER, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @set_phy_reg(%struct.ti_ohci* %64, i32 4, i32 %65)
  %67 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %68 = load i32, i32* @OHCI1394_SelfIDBuffer, align 4
  %69 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %70 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @reg_write(%struct.ti_ohci* %67, i32 %68, i32 %71)
  %73 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %74 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %75 = load i32, i32* @OHCI1394_LinkControl_RcvSelfID, align 4
  %76 = call i32 @reg_write(%struct.ti_ohci* %73, i32 %74, i32 %75)
  %77 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %78 = load i32, i32* @OHCI1394_ConfigROMmap, align 4
  %79 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %80 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @reg_write(%struct.ti_ohci* %77, i32 %78, i32 %81)
  %83 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %84 = load i32, i32* @OHCI1394_BusOptions, align 4
  %85 = call i32 @reg_read(%struct.ti_ohci* %83, i32 %84)
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 15
  %88 = add nsw i32 %87, 1
  %89 = shl i32 1, %88
  %90 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %91 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %93 = load i32, i32* @OHCI1394_IsoRecvIntMaskClear, align 4
  %94 = call i32 @reg_write(%struct.ti_ohci* %92, i32 %93, i32 -1)
  %95 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %96 = load i32, i32* @OHCI1394_IsoRecvIntEventClear, align 4
  %97 = call i32 @reg_write(%struct.ti_ohci* %95, i32 %96, i32 -1)
  %98 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %99 = load i32, i32* @OHCI1394_IsoXmitIntMaskClear, align 4
  %100 = call i32 @reg_write(%struct.ti_ohci* %98, i32 %99, i32 -1)
  %101 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %102 = load i32, i32* @OHCI1394_IsoXmitIntEventClear, align 4
  %103 = call i32 @reg_write(%struct.ti_ohci* %101, i32 %102, i32 -1)
  %104 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %105 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %104, i32 0, i32 9
  %106 = call i32 @initialize_dma_rcv_ctx(i32* %105, i32 0)
  %107 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %108 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %107, i32 0, i32 8
  %109 = call i32 @initialize_dma_rcv_ctx(i32* %108, i32 0)
  %110 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %111 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %110, i32 0, i32 7
  %112 = call i32 @initialize_dma_trm_ctx(i32* %111)
  %113 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %114 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %113, i32 0, i32 6
  %115 = call i32 @initialize_dma_trm_ctx(i32* %114)
  %116 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %117 = load i32, i32* @OHCI1394_AsReqFilterHiSet, align 4
  %118 = call i32 @reg_write(%struct.ti_ohci* %116, i32 %117, i32 -2147483648)
  %119 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %120 = load i32, i32* @OHCI1394_PhyUpperBound, align 4
  %121 = load i32, i32* @OHCI1394_PHYS_UPPER_BOUND_PROGRAMMED, align 4
  %122 = ashr i32 %121, 16
  %123 = call i32 @reg_write(%struct.ti_ohci* %119, i32 %120, i32 %122)
  %124 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %125 = load i32, i32* @OHCI1394_PhyUpperBound, align 4
  %126 = call i32 @reg_read(%struct.ti_ohci* %124, i32 %125)
  %127 = call i32 @DBGMSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %129 = load i32, i32* @OHCI1394_ATRetries, align 4
  %130 = load i32, i32* @OHCI1394_MAX_AT_REQ_RETRIES, align 4
  %131 = load i32, i32* @OHCI1394_MAX_AT_RESP_RETRIES, align 4
  %132 = shl i32 %131, 4
  %133 = or i32 %130, %132
  %134 = load i32, i32* @OHCI1394_MAX_PHYS_RESP_RETRIES, align 4
  %135 = shl i32 %134, 8
  %136 = or i32 %133, %135
  %137 = call i32 @reg_write(%struct.ti_ohci* %128, i32 %129, i32 %136)
  %138 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %139 = load i32, i32* @OHCI1394_HCControlClear, align 4
  %140 = load i32, i32* @OHCI1394_HCControl_noByteSwap, align 4
  %141 = call i32 @reg_write(%struct.ti_ohci* %138, i32 %139, i32 %140)
  %142 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %143 = load i32, i32* @OHCI1394_IntMaskSet, align 4
  %144 = load i32, i32* @OHCI1394_unrecoverableError, align 4
  %145 = load i32, i32* @OHCI1394_masterIntEnable, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @OHCI1394_busReset, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @OHCI1394_RSPkt, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @OHCI1394_RQPkt, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @OHCI1394_isochRx, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @OHCI1394_isochTx, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @reg_write(%struct.ti_ohci* %142, i32 %143, i32 %168)
  %170 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %171 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %172 = load i32, i32* @OHCI1394_HCControl_linkEnable, align 4
  %173 = call i32 @reg_write(%struct.ti_ohci* %170, i32 %171, i32 %172)
  %174 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %175 = load i32, i32* @OHCI1394_Version, align 4
  %176 = call i32 @reg_read(%struct.ti_ohci* %174, i32 %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* @KERN_INFO, align 4
  %178 = load i32, i32* %3, align 4
  %179 = ashr i32 %178, 16
  %180 = and i32 %179, 15
  %181 = load i32, i32* %3, align 4
  %182 = ashr i32 %181, 20
  %183 = and i32 %182, 15
  %184 = mul nsw i32 %183, 10
  %185 = add nsw i32 %180, %184
  %186 = load i32, i32* %3, align 4
  %187 = ashr i32 %186, 4
  %188 = and i32 %187, 15
  %189 = load i32, i32* %3, align 4
  %190 = and i32 %189, 15
  %191 = mul nsw i32 %190, 10
  %192 = add nsw i32 %188, %191
  %193 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %194 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %193, i32 0, i32 5
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %199 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %198, i32 0, i32 5
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = call i64 @pci_resource_start(%struct.TYPE_2__* %200, i32 0)
  %202 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %203 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %202, i32 0, i32 5
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = call i64 @pci_resource_start(%struct.TYPE_2__* %204, i32 0)
  %206 = load i64, i64* @OHCI1394_REGISTER_SIZE, align 8
  %207 = add i64 %205, %206
  %208 = sub i64 %207, 1
  %209 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %210 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %213 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %216 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i32, i8*, ...) @PRINT(i32 %177, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %185, i32 %192, i32 %197, i64 %201, i64 %208, i32 %211, i32 %214, i32 %217)
  %219 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %220 = call i32 @get_phy_reg(%struct.ti_ohci* %219, i32 2)
  %221 = and i32 %220, 15
  store i32 %221, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %241, %63
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %244

226:                                              ; preds = %222
  %227 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @set_phy_reg(%struct.ti_ohci* %227, i32 7, i32 %228)
  %230 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %231 = call i32 @get_phy_reg(%struct.ti_ohci* %230, i32 8)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = and i32 %232, 32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %226
  %236 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %237 = load i32, i32* %6, align 4
  %238 = and i32 %237, -2
  %239 = call i32 @set_phy_reg(%struct.ti_ohci* %236, i32 8, i32 %238)
  br label %240

240:                                              ; preds = %235, %226
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %222

244:                                              ; preds = %222
  %245 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %246 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %247, 512
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %251 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp sgt i32 %252, 4096
  br i1 %253, label %254, label %267

254:                                              ; preds = %249, %244
  %255 = load i32, i32* @KERN_DEBUG, align 4
  %256 = call i32 (i32, i8*, ...) @PRINT(i32 %255, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %257 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %258 = load i32, i32* @OHCI1394_BusOptions, align 4
  %259 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %260 = load i32, i32* @OHCI1394_BusOptions, align 4
  %261 = call i32 @reg_read(%struct.ti_ohci* %259, i32 %260)
  %262 = and i32 %261, 61447
  %263 = or i32 %262, 32770
  %264 = call i32 @reg_write(%struct.ti_ohci* %257, i32 %258, i32 %263)
  %265 = load %struct.ti_ohci*, %struct.ti_ohci** %2, align 8
  %266 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %265, i32 0, i32 2
  store i32 512, i32* %266, align 8
  br label %267

267:                                              ; preds = %254, %249
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @get_phy_reg(%struct.ti_ohci*, i32) #1

declare dso_local i32 @set_phy_reg(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @initialize_dma_rcv_ctx(i32*, i32) #1

declare dso_local i32 @initialize_dma_trm_ctx(i32*) #1

declare dso_local i32 @DBGMSG(i8*, i32) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
