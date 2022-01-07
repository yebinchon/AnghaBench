; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32, i32, i32, %struct.dma_rcv_ctx, %struct.dma_rcv_ctx, %struct.dma_trm_ctx, %struct.dma_trm_ctx, %struct.hpsb_host*, i64 }
%struct.dma_rcv_ctx = type { i32, i32, i64 }
%struct.dma_trm_ctx = type { i32, i32, i64 }
%struct.hpsb_host = type { i64 }

@OHCI1394_IntEventClear = common dso_local global i64 0, align 8
@OHCI1394_busReset = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Device removed.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"IntEvent: %08x\00", align 1
@OHCI1394_unrecoverableError = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unrecoverable error!\00", align 1
@OHCI1394_AsReqTrContextControlSet = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"Async Req Tx Context died: ctrl[%08x] cmdptr[%08x]\00", align 1
@OHCI1394_AsReqTrCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_AsRspTrContextControlSet = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Async Rsp Tx Context died: ctrl[%08x] cmdptr[%08x]\00", align 1
@OHCI1394_AsRspTrCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_AsReqRcvContextControlSet = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"Async Req Rcv Context died: ctrl[%08x] cmdptr[%08x]\00", align 1
@OHCI1394_AsReqRcvCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_AsRspRcvContextControlSet = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"Async Rsp Rcv Context died: ctrl[%08x] cmdptr[%08x]\00", align 1
@OHCI1394_AsRspRcvCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_IsoXmitContextControlSet = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Iso Xmit %d Context died: ctrl[%08x] cmdptr[%08x]\00", align 1
@OHCI1394_IsoXmitCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvContextControlSet = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [62 x i8] c"Iso Recv %d Context died: ctrl[%08x] cmdptr[%08x] match[%08x]\00", align 1
@OHCI1394_IsoRcvCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvContextMatch = common dso_local global i64 0, align 8
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"physical posted write error\00", align 1
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"isochronous cycle too long\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"OHCI1394_cycleTooLong\00", align 1
@OHCI1394_LinkControlSet = common dso_local global i64 0, align 8
@OHCI1394_LinkControl_CycleMaster = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"OHCI1394_cycleInconsistent\00", align 1
@OHCI1394_IntMaskClear = common dso_local global i64 0, align 8
@OHCI1394_IntEventSet = common dso_local global i64 0, align 8
@RESET_BUS = common dso_local global i32 0, align 4
@LONG_RESET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"Detected bus-reset loop. Forced a bus reset!\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"irq_handler: Bus reset requested\00", align 1
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"Got reqTxComplete interrupt status=0x%08X\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"reqTxComplete\00", align 1
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"Got respTxComplete interrupt status=0x%08X\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"respTxComplete\00", align 1
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [34 x i8] c"Got RQPkt interrupt status=0x%08X\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"RQPkt\00", align 1
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"Got RSPkt interrupt status=0x%08X\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"RSPkt\00", align 1
@OHCI1394_isochRx = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntEventSet = common dso_local global i64 0, align 8
@OHCI1394_IsoRecvIntEventClear = common dso_local global i64 0, align 8
@OHCI1394_isochTx = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntEventSet = common dso_local global i64 0, align 8
@OHCI1394_IsoXmitIntEventClear = common dso_local global i64 0, align 8
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@OHCI1394_NodeID = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [76 x i8] c"SelfID received, but NodeID invalid (probably new bus reset occurred): %08X\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"SelfID interrupt received (phyid %d, %s)\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"not root\00", align 1
@OHCI1394_IntMaskSet = common dso_local global i64 0, align 8
@phys_dma = common dso_local global i64 0, align 8
@OHCI1394_PhyReqFilterHiSet = common dso_local global i64 0, align 8
@OHCI1394_PhyReqFilterLoSet = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [22 x i8] c"PhyReqFilter=%08x%08x\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"SelfID received outside of bus reset sequence\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Unhandled interrupt(s) 0x%08x\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ohci_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_ohci*, align 8
  %9 = alloca %struct.hpsb_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_trm_ctx*, align 8
  %16 = alloca %struct.dma_trm_ctx*, align 8
  %17 = alloca %struct.dma_rcv_ctx*, align 8
  %18 = alloca %struct.dma_rcv_ctx*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.ti_ohci*
  store %struct.ti_ohci* %22, %struct.ti_ohci** %8, align 8
  %23 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %24 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %23, i32 0, i32 7
  %25 = load %struct.hpsb_host*, %struct.hpsb_host** %24, align 8
  store %struct.hpsb_host* %25, %struct.hpsb_host** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %27 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %26, i32 0, i32 2
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %31 = load i64, i64* @OHCI1394_IntEventClear, align 8
  %32 = call i32 @reg_read(%struct.ti_ohci* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %34 = load i64, i64* @OHCI1394_IntEventClear, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @OHCI1394_busReset, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @reg_write(%struct.ti_ohci* %33, i64 %34, i32 %38)
  %40 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %41 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %40, i32 0, i32 2
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %3, align 4
  br label %609

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %609

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @OHCI1394_unrecoverableError, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %213

61:                                               ; preds = %54
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = call i32 (i32, i8*, ...) @PRINT(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %65 = load i64, i64* @OHCI1394_AsReqTrContextControlSet, align 8
  %66 = call i32 @reg_read(%struct.ti_ohci* %64, i64 %65)
  %67 = and i32 %66, 2048
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %72 = load i64, i64* @OHCI1394_AsReqTrContextControlSet, align 8
  %73 = call i32 @reg_read(%struct.ti_ohci* %71, i64 %72)
  %74 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %75 = load i64, i64* @OHCI1394_AsReqTrCommandPtr, align 8
  %76 = call i32 @reg_read(%struct.ti_ohci* %74, i64 %75)
  %77 = call i32 (i32, i8*, ...) @PRINT(i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %61
  %79 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %80 = load i64, i64* @OHCI1394_AsRspTrContextControlSet, align 8
  %81 = call i32 @reg_read(%struct.ti_ohci* %79, i64 %80)
  %82 = and i32 %81, 2048
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i32, i32* @KERN_ERR, align 4
  %86 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %87 = load i64, i64* @OHCI1394_AsRspTrContextControlSet, align 8
  %88 = call i32 @reg_read(%struct.ti_ohci* %86, i64 %87)
  %89 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %90 = load i64, i64* @OHCI1394_AsRspTrCommandPtr, align 8
  %91 = call i32 @reg_read(%struct.ti_ohci* %89, i64 %90)
  %92 = call i32 (i32, i8*, ...) @PRINT(i32 %85, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %84, %78
  %94 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %95 = load i64, i64* @OHCI1394_AsReqRcvContextControlSet, align 8
  %96 = call i32 @reg_read(%struct.ti_ohci* %94, i64 %95)
  %97 = and i32 %96, 2048
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %102 = load i64, i64* @OHCI1394_AsReqRcvContextControlSet, align 8
  %103 = call i32 @reg_read(%struct.ti_ohci* %101, i64 %102)
  %104 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %105 = load i64, i64* @OHCI1394_AsReqRcvCommandPtr, align 8
  %106 = call i32 @reg_read(%struct.ti_ohci* %104, i64 %105)
  %107 = call i32 (i32, i8*, ...) @PRINT(i32 %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %99, %93
  %109 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %110 = load i64, i64* @OHCI1394_AsRspRcvContextControlSet, align 8
  %111 = call i32 @reg_read(%struct.ti_ohci* %109, i64 %110)
  %112 = and i32 %111, 2048
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load i32, i32* @KERN_ERR, align 4
  %116 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %117 = load i64, i64* @OHCI1394_AsRspRcvContextControlSet, align 8
  %118 = call i32 @reg_read(%struct.ti_ohci* %116, i64 %117)
  %119 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %120 = load i64, i64* @OHCI1394_AsRspRcvCommandPtr, align 8
  %121 = call i32 @reg_read(%struct.ti_ohci* %119, i64 %120)
  %122 = call i32 (i32, i8*, ...) @PRINT(i32 %115, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %114, %108
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %159, %123
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %127 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %124
  %131 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %132 = load i64, i64* @OHCI1394_IsoXmitContextControlSet, align 8
  %133 = load i32, i32* %13, align 4
  %134 = mul nsw i32 16, %133
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %132, %135
  %137 = call i32 @reg_read(%struct.ti_ohci* %131, i64 %136)
  %138 = and i32 %137, 2048
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %130
  %141 = load i32, i32* @KERN_ERR, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %144 = load i64, i64* @OHCI1394_IsoXmitContextControlSet, align 8
  %145 = load i32, i32* %13, align 4
  %146 = mul nsw i32 16, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %144, %147
  %149 = call i32 @reg_read(%struct.ti_ohci* %143, i64 %148)
  %150 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %151 = load i64, i64* @OHCI1394_IsoXmitCommandPtr, align 8
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 16, %152
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %151, %154
  %156 = call i32 @reg_read(%struct.ti_ohci* %150, i64 %155)
  %157 = call i32 (i32, i8*, ...) @PRINT(i32 %141, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %142, i32 %149, i32 %156)
  br label %158

158:                                              ; preds = %140, %130
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %124

162:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %205, %162
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %166 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %163
  %170 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %171 = load i64, i64* @OHCI1394_IsoRcvContextControlSet, align 8
  %172 = load i32, i32* %13, align 4
  %173 = mul nsw i32 32, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %171, %174
  %176 = call i32 @reg_read(%struct.ti_ohci* %170, i64 %175)
  %177 = and i32 %176, 2048
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %169
  %180 = load i32, i32* @KERN_ERR, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %183 = load i64, i64* @OHCI1394_IsoRcvContextControlSet, align 8
  %184 = load i32, i32* %13, align 4
  %185 = mul nsw i32 32, %184
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %183, %186
  %188 = call i32 @reg_read(%struct.ti_ohci* %182, i64 %187)
  %189 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %190 = load i64, i64* @OHCI1394_IsoRcvCommandPtr, align 8
  %191 = load i32, i32* %13, align 4
  %192 = mul nsw i32 32, %191
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %190, %193
  %195 = call i32 @reg_read(%struct.ti_ohci* %189, i64 %194)
  %196 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %197 = load i64, i64* @OHCI1394_IsoRcvContextMatch, align 8
  %198 = load i32, i32* %13, align 4
  %199 = mul nsw i32 32, %198
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %197, %200
  %202 = call i32 @reg_read(%struct.ti_ohci* %196, i64 %201)
  %203 = call i32 (i32, i8*, ...) @PRINT(i32 %180, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %181, i32 %188, i32 %195, i32 %202)
  br label %204

204:                                              ; preds = %179, %169
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %163

208:                                              ; preds = %163
  %209 = load i32, i32* @OHCI1394_unrecoverableError, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %54
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load i32, i32* @KERN_ERR, align 4
  %220 = call i32 (i32, i8*, ...) @PRINT(i32 %219, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %221 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %6, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %218, %213
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %225
  %231 = call i64 (...) @printk_ratelimit()
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* @KERN_WARNING, align 4
  %235 = call i32 (i32, i8*, ...) @PRINT(i32 %234, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %238

236:                                              ; preds = %230
  %237 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %233
  %239 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %240 = load i64, i64* @OHCI1394_LinkControlSet, align 8
  %241 = load i32, i32* @OHCI1394_LinkControl_CycleMaster, align 4
  %242 = call i32 @reg_write(%struct.ti_ohci* %239, i64 %240, i32 %241)
  %243 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %244 = xor i32 %243, -1
  %245 = load i32, i32* %6, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %238, %225
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %254 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %6, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %6, align 4
  br label %258

258:                                              ; preds = %252, %247
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @OHCI1394_busReset, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %331

263:                                              ; preds = %258
  %264 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %265 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %264, i32 0, i32 2
  %266 = load i64, i64* %12, align 8
  %267 = call i32 @spin_lock_irqsave(i32* %265, i64 %266)
  %268 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %269 = load i64, i64* @OHCI1394_IntMaskClear, align 8
  %270 = load i32, i32* @OHCI1394_busReset, align 4
  %271 = call i32 @reg_write(%struct.ti_ohci* %268, i64 %269, i32 %270)
  %272 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %273 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %272, i32 0, i32 8
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %311

276:                                              ; preds = %263
  store i32 0, i32* %14, align 4
  %277 = call i32 @udelay(i32 10)
  br label %278

278:                                              ; preds = %307, %276
  %279 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %280 = load i64, i64* @OHCI1394_IntEventSet, align 8
  %281 = call i32 @reg_read(%struct.ti_ohci* %279, i64 %280)
  %282 = load i32, i32* @OHCI1394_busReset, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %310

285:                                              ; preds = %278
  %286 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %287 = load i64, i64* @OHCI1394_IntEventClear, align 8
  %288 = load i32, i32* @OHCI1394_busReset, align 4
  %289 = call i32 @reg_write(%struct.ti_ohci* %286, i64 %287, i32 %288)
  %290 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %291 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %290, i32 0, i32 2
  %292 = load i64, i64* %12, align 8
  %293 = call i32 @spin_unlock_irqrestore(i32* %291, i64 %292)
  %294 = call i32 @udelay(i32 10)
  %295 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %296 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %295, i32 0, i32 2
  %297 = load i64, i64* %12, align 8
  %298 = call i32 @spin_lock_irqsave(i32* %296, i64 %297)
  %299 = load i32, i32* %14, align 4
  %300 = icmp sgt i32 %299, 10000
  br i1 %300, label %301, label %307

301:                                              ; preds = %285
  %302 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %303 = load i32, i32* @RESET_BUS, align 4
  %304 = load i32, i32* @LONG_RESET, align 4
  %305 = call i32 @ohci_devctl(%struct.hpsb_host* %302, i32 %303, i32 %304)
  %306 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %307

307:                                              ; preds = %301, %285
  %308 = load i32, i32* %14, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %14, align 4
  br label %278

310:                                              ; preds = %278
  br label %311

311:                                              ; preds = %310, %263
  %312 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %313 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %312, i32 0, i32 2
  %314 = load i64, i64* %12, align 8
  %315 = call i32 @spin_unlock_irqrestore(i32* %313, i64 %314)
  %316 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %317 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %311
  %321 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %322 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %323 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %322, i32 0, i32 7
  %324 = load %struct.hpsb_host*, %struct.hpsb_host** %323, align 8
  %325 = call i32 @hpsb_bus_reset(%struct.hpsb_host* %324)
  br label %326

326:                                              ; preds = %320, %311
  %327 = load i32, i32* @OHCI1394_busReset, align 4
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %6, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %326, %258
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %367

336:                                              ; preds = %331
  %337 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %338 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %337, i32 0, i32 6
  store %struct.dma_trm_ctx* %338, %struct.dma_trm_ctx** %15, align 8
  %339 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %340 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %15, align 8
  %341 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @reg_read(%struct.ti_ohci* %339, i64 %342)
  %344 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %343)
  %345 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %346 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %15, align 8
  %347 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = call i32 @reg_read(%struct.ti_ohci* %345, i64 %348)
  %350 = and i32 %349, 2048
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %336
  %353 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %354 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %15, align 8
  %355 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %353, i32 %356, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %362

358:                                              ; preds = %336
  %359 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %15, align 8
  %360 = ptrtoint %struct.dma_trm_ctx* %359 to i64
  %361 = call i32 @dma_trm_tasklet(i64 %360)
  br label %362

362:                                              ; preds = %358, %352
  %363 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %364 = xor i32 %363, -1
  %365 = load i32, i32* %6, align 4
  %366 = and i32 %365, %364
  store i32 %366, i32* %6, align 4
  br label %367

367:                                              ; preds = %362, %331
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %403

372:                                              ; preds = %367
  %373 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %374 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %373, i32 0, i32 5
  store %struct.dma_trm_ctx* %374, %struct.dma_trm_ctx** %16, align 8
  %375 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %376 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %16, align 8
  %377 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = call i32 @reg_read(%struct.ti_ohci* %375, i64 %378)
  %380 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %379)
  %381 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %382 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %16, align 8
  %383 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = call i32 @reg_read(%struct.ti_ohci* %381, i64 %384)
  %386 = and i32 %385, 2048
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %372
  %389 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %390 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %16, align 8
  %391 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %389, i32 %392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %398

394:                                              ; preds = %372
  %395 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %16, align 8
  %396 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %395, i32 0, i32 0
  %397 = call i32 @tasklet_schedule(i32* %396)
  br label %398

398:                                              ; preds = %394, %388
  %399 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %400 = xor i32 %399, -1
  %401 = load i32, i32* %6, align 4
  %402 = and i32 %401, %400
  store i32 %402, i32* %6, align 4
  br label %403

403:                                              ; preds = %398, %367
  %404 = load i32, i32* %6, align 4
  %405 = load i32, i32* @OHCI1394_RQPkt, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %439

408:                                              ; preds = %403
  %409 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %410 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %409, i32 0, i32 4
  store %struct.dma_rcv_ctx* %410, %struct.dma_rcv_ctx** %17, align 8
  %411 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %412 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %17, align 8
  %413 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = call i32 @reg_read(%struct.ti_ohci* %411, i64 %414)
  %416 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %415)
  %417 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %418 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %17, align 8
  %419 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %418, i32 0, i32 2
  %420 = load i64, i64* %419, align 8
  %421 = call i32 @reg_read(%struct.ti_ohci* %417, i64 %420)
  %422 = and i32 %421, 2048
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %408
  %425 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %426 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %17, align 8
  %427 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %425, i32 %428, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %434

430:                                              ; preds = %408
  %431 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %17, align 8
  %432 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %431, i32 0, i32 0
  %433 = call i32 @tasklet_schedule(i32* %432)
  br label %434

434:                                              ; preds = %430, %424
  %435 = load i32, i32* @OHCI1394_RQPkt, align 4
  %436 = xor i32 %435, -1
  %437 = load i32, i32* %6, align 4
  %438 = and i32 %437, %436
  store i32 %438, i32* %6, align 4
  br label %439

439:                                              ; preds = %434, %403
  %440 = load i32, i32* %6, align 4
  %441 = load i32, i32* @OHCI1394_RSPkt, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %475

444:                                              ; preds = %439
  %445 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %446 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %445, i32 0, i32 3
  store %struct.dma_rcv_ctx* %446, %struct.dma_rcv_ctx** %18, align 8
  %447 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %448 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %18, align 8
  %449 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @reg_read(%struct.ti_ohci* %447, i64 %450)
  %452 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 %451)
  %453 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %454 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %18, align 8
  %455 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %454, i32 0, i32 2
  %456 = load i64, i64* %455, align 8
  %457 = call i32 @reg_read(%struct.ti_ohci* %453, i64 %456)
  %458 = and i32 %457, 2048
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %466

460:                                              ; preds = %444
  %461 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %462 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %18, align 8
  %463 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %461, i32 %464, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %470

466:                                              ; preds = %444
  %467 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %18, align 8
  %468 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %467, i32 0, i32 0
  %469 = call i32 @tasklet_schedule(i32* %468)
  br label %470

470:                                              ; preds = %466, %460
  %471 = load i32, i32* @OHCI1394_RSPkt, align 4
  %472 = xor i32 %471, -1
  %473 = load i32, i32* %6, align 4
  %474 = and i32 %473, %472
  store i32 %474, i32* %6, align 4
  br label %475

475:                                              ; preds = %470, %439
  %476 = load i32, i32* %6, align 4
  %477 = load i32, i32* @OHCI1394_isochRx, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %495

480:                                              ; preds = %475
  %481 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %482 = load i64, i64* @OHCI1394_IsoRecvIntEventSet, align 8
  %483 = call i32 @reg_read(%struct.ti_ohci* %481, i64 %482)
  store i32 %483, i32* %19, align 4
  %484 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %485 = load i64, i64* @OHCI1394_IsoRecvIntEventClear, align 8
  %486 = load i32, i32* %19, align 4
  %487 = call i32 @reg_write(%struct.ti_ohci* %484, i64 %485, i32 %486)
  %488 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %489 = load i32, i32* %19, align 4
  %490 = call i32 @ohci_schedule_iso_tasklets(%struct.ti_ohci* %488, i32 %489, i32 0)
  %491 = load i32, i32* @OHCI1394_isochRx, align 4
  %492 = xor i32 %491, -1
  %493 = load i32, i32* %6, align 4
  %494 = and i32 %493, %492
  store i32 %494, i32* %6, align 4
  br label %495

495:                                              ; preds = %480, %475
  %496 = load i32, i32* %6, align 4
  %497 = load i32, i32* @OHCI1394_isochTx, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %515

500:                                              ; preds = %495
  %501 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %502 = load i64, i64* @OHCI1394_IsoXmitIntEventSet, align 8
  %503 = call i32 @reg_read(%struct.ti_ohci* %501, i64 %502)
  store i32 %503, i32* %20, align 4
  %504 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %505 = load i64, i64* @OHCI1394_IsoXmitIntEventClear, align 8
  %506 = load i32, i32* %20, align 4
  %507 = call i32 @reg_write(%struct.ti_ohci* %504, i64 %505, i32 %506)
  %508 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %509 = load i32, i32* %20, align 4
  %510 = call i32 @ohci_schedule_iso_tasklets(%struct.ti_ohci* %508, i32 0, i32 %509)
  %511 = load i32, i32* @OHCI1394_isochTx, align 4
  %512 = xor i32 %511, -1
  %513 = load i32, i32* %6, align 4
  %514 = and i32 %513, %512
  store i32 %514, i32* %6, align 4
  br label %515

515:                                              ; preds = %500, %495
  %516 = load i32, i32* %6, align 4
  %517 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %518 = and i32 %516, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %600

520:                                              ; preds = %515
  %521 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %522 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %591

525:                                              ; preds = %520
  %526 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %527 = load i64, i64* @OHCI1394_NodeID, align 8
  %528 = call i32 @reg_read(%struct.ti_ohci* %526, i64 %527)
  store i32 %528, i32* %7, align 4
  %529 = load i32, i32* %7, align 4
  %530 = and i32 %529, -2147483648
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %536, label %532

532:                                              ; preds = %525
  %533 = load i32, i32* @KERN_ERR, align 4
  %534 = load i32, i32* %7, align 4
  %535 = call i32 (i32, i8*, ...) @PRINT(i32 %533, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0), i32 %534)
  br label %595

536:                                              ; preds = %525
  %537 = load i32, i32* %7, align 4
  %538 = and i32 %537, 63
  store i32 %538, i32* %10, align 4
  %539 = load i32, i32* %7, align 4
  %540 = and i32 %539, 1073741824
  %541 = icmp ne i32 %540, 0
  %542 = zext i1 %541 to i32
  store i32 %542, i32* %11, align 4
  %543 = load i32, i32* %10, align 4
  %544 = load i32, i32* %11, align 4
  %545 = icmp ne i32 %544, 0
  %546 = zext i1 %545 to i64
  %547 = select i1 %545, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)
  %548 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i32 %543, i8* %547)
  %549 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %550 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %551 = load i32, i32* %10, align 4
  %552 = load i32, i32* %11, align 4
  %553 = call i32 @handle_selfid(%struct.ti_ohci* %549, %struct.hpsb_host* %550, i32 %551, i32 %552)
  %554 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %555 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %554, i32 0, i32 2
  %556 = load i64, i64* %12, align 8
  %557 = call i32 @spin_lock_irqsave(i32* %555, i64 %556)
  %558 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %559 = load i64, i64* @OHCI1394_IntEventClear, align 8
  %560 = load i32, i32* @OHCI1394_busReset, align 4
  %561 = call i32 @reg_write(%struct.ti_ohci* %558, i64 %559, i32 %560)
  %562 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %563 = load i64, i64* @OHCI1394_IntMaskSet, align 8
  %564 = load i32, i32* @OHCI1394_busReset, align 4
  %565 = call i32 @reg_write(%struct.ti_ohci* %562, i64 %563, i32 %564)
  %566 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %567 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %566, i32 0, i32 2
  %568 = load i64, i64* %12, align 8
  %569 = call i32 @spin_unlock_irqrestore(i32* %567, i64 %568)
  %570 = load i64, i64* @phys_dma, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %536
  %573 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %574 = load i64, i64* @OHCI1394_PhyReqFilterHiSet, align 8
  %575 = call i32 @reg_write(%struct.ti_ohci* %573, i64 %574, i32 -1)
  %576 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %577 = load i64, i64* @OHCI1394_PhyReqFilterLoSet, align 8
  %578 = call i32 @reg_write(%struct.ti_ohci* %576, i64 %577, i32 -1)
  br label %579

579:                                              ; preds = %572, %536
  %580 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %581 = load i64, i64* @OHCI1394_PhyReqFilterHiSet, align 8
  %582 = call i32 @reg_read(%struct.ti_ohci* %580, i64 %581)
  %583 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %584 = load i64, i64* @OHCI1394_PhyReqFilterLoSet, align 8
  %585 = call i32 @reg_read(%struct.ti_ohci* %583, i64 %584)
  %586 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %582, i32 %585)
  %587 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %588 = load i32, i32* %10, align 4
  %589 = load i32, i32* %11, align 4
  %590 = call i32 @hpsb_selfid_complete(%struct.hpsb_host* %587, i32 %588, i32 %589)
  br label %594

591:                                              ; preds = %520
  %592 = load i32, i32* @KERN_ERR, align 4
  %593 = call i32 (i32, i8*, ...) @PRINT(i32 %592, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  br label %594

594:                                              ; preds = %591, %579
  br label %595

595:                                              ; preds = %594, %532
  %596 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %597 = xor i32 %596, -1
  %598 = load i32, i32* %6, align 4
  %599 = and i32 %598, %597
  store i32 %599, i32* %6, align 4
  br label %600

600:                                              ; preds = %595, %515
  %601 = load i32, i32* %6, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %600
  %604 = load i32, i32* @KERN_ERR, align 4
  %605 = load i32, i32* %6, align 4
  %606 = call i32 (i32, i8*, ...) @PRINT(i32 %604, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i32 %605)
  br label %607

607:                                              ; preds = %603, %600
  %608 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %608, i32* %3, align 4
  br label %609

609:                                              ; preds = %607, %51, %46
  %610 = load i32, i32* %3, align 4
  ret i32 %610
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i64) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBGMSG(i8*, ...) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ohci_devctl(%struct.hpsb_host*, i32, i32) #1

declare dso_local i32 @hpsb_bus_reset(%struct.hpsb_host*) #1

declare dso_local i32 @ohci1394_stop_context(%struct.ti_ohci*, i32, i8*) #1

declare dso_local i32 @dma_trm_tasklet(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ohci_schedule_iso_tasklets(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @handle_selfid(%struct.ti_ohci*, %struct.hpsb_host*, i32, i32) #1

declare dso_local i32 @hpsb_selfid_complete(%struct.hpsb_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
