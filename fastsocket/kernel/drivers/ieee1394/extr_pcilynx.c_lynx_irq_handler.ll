; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_lynx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_lynx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lynx = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.hpsb_host* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i8** }
%struct.hpsb_host = type { i64 }
%struct.ti_pcl = type { i32 }
%struct.hpsb_packet = type { i64, i64, i32 }

@LINK_INT_STATUS = common dso_local global i32 0, align 4
@PCI_INT_STATUS = common dso_local global i32 0, align 4
@PCI_INT_INT_PEND = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"interrupt: 0x%08x / 0x%08x\00", align 1
@PCI_INT_1394 = common dso_local global i32 0, align 4
@LINK_INT_PHY_TIMEOUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PHY timeout occurred\00", align 1
@LINK_INT_PHY_BUSRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"bus reset interrupt\00", align 1
@LINK_INT_PHY_REG_RCVD = common dso_local global i32 0, align 4
@LINK_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"phy reg received without reset\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unsolicited phy reg %d received\00", align 1
@LINK_INT_ISO_STUCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"isochronous transmitter stuck\00", align 1
@LINK_INT_ASYNC_STUCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"asynchronous transmitter stuck\00", align 1
@LINK_INT_SENT_REJECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"sent reject\00", align 1
@LINK_INT_TX_INVALID_TC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"invalid transaction code\00", align 1
@LINK_INT_GRF_OVERFLOW = common dso_local global i32 0, align 4
@FIFO_CONTROL = common dso_local global i32 0, align 4
@FIFO_CONTROL_GRF_FLUSH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"GRF overflow\00", align 1
@LINK_INT_ITF_UNDERFLOW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"ITF underflow\00", align 1
@LINK_INT_ATF_UNDERFLOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"ATF underflow\00", align 1
@CHANNEL_ISO_RCV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"iso receive\00", align 1
@NUM_ISORCV_PCL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@CHANNEL_ASYNC_SEND = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"async sent\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [64 x i8] c"async dma halted, but no queued packet (maybe it was cancelled)\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@hpsb_async = common dso_local global i32 0, align 4
@DMA_CHAN_STAT_PKTCMPL = common dso_local global i32 0, align 4
@DMA_CHAN_STAT_SPECIALACK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"special ack %d\00", align 1
@ACKX_TIMEOUT = common dso_local global i32 0, align 4
@ACKX_SEND_ERROR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"async packet was not completed\00", align 1
@CHANNEL_ISO_SEND = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"iso sent\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [42 x i8] c"iso send dma halted, but no queued packet\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"iso send packet was not completed\00", align 1
@CHANNEL_ASYNC_RCV = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"received packet size %d\00", align 1
@DMA_CHAN_STAT_SELFID = common dso_local global i32 0, align 4
@TCODE_READQ_RESPONSE = common dso_local global i32 0, align 4
@TCODE_WRITEQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@hpsb_iso = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lynx_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynx_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ti_lynx*, align 8
  %7 = alloca %struct.hpsb_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ti_pcl, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hpsb_packet*, align 8
  %14 = alloca %struct.ti_pcl, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hpsb_packet*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.ti_lynx*
  store %struct.ti_lynx* %20, %struct.ti_lynx** %6, align 8
  %21 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %22 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %21, i32 0, i32 10
  %23 = load %struct.hpsb_host*, %struct.hpsb_host** %22, align 8
  store %struct.hpsb_host* %23, %struct.hpsb_host** %7, align 8
  %24 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %25 = load i32, i32* @LINK_INT_STATUS, align 4
  %26 = call i8* @reg_read(%struct.ti_lynx* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %29 = load i32, i32* @PCI_INT_STATUS, align 4
  %30 = call i8* @reg_read(%struct.ti_lynx* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PCI_INT_INT_PEND, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %658

38:                                               ; preds = %2
  %39 = load i32, i32* @KERN_DEBUG, align 4
  %40 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %41 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %39, i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %47 = load i32, i32* @LINK_INT_STATUS, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @reg_write(%struct.ti_lynx* %46, i32 %47, i32 %48)
  %50 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %51 = load i32, i32* @PCI_INT_STATUS, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @reg_write(%struct.ti_lynx* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @PCI_INT_1394, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %229

58:                                               ; preds = %38
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LINK_INT_PHY_TIMEOUT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %66 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %64, i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @LINK_INT_PHY_BUSRESET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, i32* @KERN_INFO, align 4
  %76 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %77 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %75, i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %81 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 8
  %82 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %83 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %82, i32 0, i32 1
  store i32 -1, i32* %83, align 4
  %84 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %85 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %74
  %89 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %90 = call i32 @hpsb_bus_reset(%struct.hpsb_host* %89)
  br label %91

91:                                               ; preds = %88, %74
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @LINK_INT_PHY_REG_RCVD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %141

97:                                               ; preds = %92
  %98 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %99 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %98, i32 0, i32 9
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %102 = load i32, i32* @LINK_PHY, align 4
  %103 = call i8* @reg_read(%struct.ti_lynx* %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %106 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %105, i32 0, i32 9
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %109 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %97
  %113 = load i32, i32* @KERN_INFO, align 4
  %114 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %115 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %113, i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %140

118:                                              ; preds = %97
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 3840
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* @KERN_INFO, align 4
  %124 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %125 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = ashr i32 %127, 8
  %129 = and i32 %128, 15
  %130 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %123, i32 %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %139

131:                                              ; preds = %118
  %132 = load i32, i32* %10, align 4
  %133 = and i32 %132, 255
  %134 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %135 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %137 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %138 = call i32 @handle_selfid(%struct.ti_lynx* %136, %struct.hpsb_host* %137)
  br label %139

139:                                              ; preds = %131, %122
  br label %140

140:                                              ; preds = %139, %112
  br label %141

141:                                              ; preds = %140, %92
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @LINK_INT_ISO_STUCK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* @KERN_INFO, align 4
  %148 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %149 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %147, i32 %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @LINK_INT_ASYNC_STUCK, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @KERN_INFO, align 4
  %159 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %160 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %158, i32 %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %157, %152
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @LINK_INT_SENT_REJECT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @KERN_INFO, align 4
  %170 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %171 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %169, i32 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @LINK_INT_TX_INVALID_TC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @KERN_INFO, align 4
  %181 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %182 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %180, i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @LINK_INT_GRF_OVERFLOW, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %185
  %191 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %192 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %197 = load i32, i32* @FIFO_CONTROL, align 4
  %198 = load i32, i32* @FIFO_CONTROL_GRF_FLUSH, align 4
  %199 = call i32 @reg_write(%struct.ti_lynx* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %190
  %201 = load i32, i32* @KERN_INFO, align 4
  %202 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %203 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %201, i32 %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %206

206:                                              ; preds = %200, %185
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @LINK_INT_ITF_UNDERFLOW, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i32, i32* @KERN_INFO, align 4
  %213 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %214 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %212, i32 %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %217

217:                                              ; preds = %211, %206
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @LINK_INT_ATF_UNDERFLOW, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* @KERN_INFO, align 4
  %224 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %225 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %223, i32 %226, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %228

228:                                              ; preds = %222, %217
  br label %229

229:                                              ; preds = %228, %38
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @CHANNEL_ISO_RCV, align 4
  %232 = call i32 @PCI_INT_DMA_HLT(i32 %231)
  %233 = and i32 %230, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %321

235:                                              ; preds = %229
  %236 = load i32, i32* @KERN_DEBUG, align 4
  %237 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %238 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %236, i32 %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %241 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %242 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %241, i32 0, i32 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = call i32 @spin_lock(i32* %243)
  %245 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %246 = load i32, i32* @CHANNEL_ISO_RCV, align 4
  %247 = call i32 @DMA_CHAN_STAT(i32 %246)
  %248 = call i8* @reg_read(%struct.ti_lynx* %245, i32 %247)
  %249 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %250 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %249, i32 0, i32 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 7
  %252 = load i8**, i8*** %251, align 8
  %253 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %254 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %253, i32 0, i32 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds i8*, i8** %252, i64 %256
  store i8* %248, i8** %257, align 8
  %258 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %259 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %258, i32 0, i32 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 4
  %263 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %264 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %266, 1
  %268 = load i32, i32* @NUM_ISORCV_PCL, align 4
  %269 = sext i32 %268 to i64
  %270 = urem i64 %267, %269
  %271 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %272 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %271, i32 0, i32 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  store i64 %270, i64* %273, align 8
  %274 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %275 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %274, i32 0, i32 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %279 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %278, i32 0, i32 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = icmp eq i64 %277, %282
  br i1 %283, label %290, label %284

284:                                              ; preds = %235
  %285 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %286 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %285, i32 0, i32 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %284, %235
  %291 = load i32, i32* @KERN_DEBUG, align 4
  %292 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %293 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %291, i32 %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %296 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %297 = load i32, i32* @CHANNEL_ISO_RCV, align 4
  %298 = call i32 @DMA_WORD1_CMP_ENABLE(i32 %297)
  %299 = call i32 @reg_write(%struct.ti_lynx* %296, i32 %298, i32 0)
  br label %300

300:                                              ; preds = %290, %284
  %301 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %302 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %303 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %302, i32 0, i32 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %307 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %306, i32 0, i32 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = trunc i64 %309 to i32
  %311 = load i32, i32* @CHANNEL_ISO_RCV, align 4
  %312 = call i32 @run_sub_pcl(%struct.ti_lynx* %301, i32 %305, i32 %310, i32 %311)
  %313 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %314 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %313, i32 0, i32 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 3
  %316 = call i32 @spin_unlock(i32* %315)
  %317 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %318 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 2
  %320 = call i32 @tasklet_schedule(i32* %319)
  br label %321

321:                                              ; preds = %300, %229
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @CHANNEL_ASYNC_SEND, align 4
  %324 = call i32 @PCI_INT_DMA_HLT(i32 %323)
  %325 = and i32 %322, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %461

327:                                              ; preds = %321
  %328 = load i32, i32* @KERN_DEBUG, align 4
  %329 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %330 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %328, i32 %331, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %333 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %334 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %333, i32 0, i32 7
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = call i32 @spin_lock(i32* %335)
  %337 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %338 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 4
  %340 = call i64 @list_empty(%struct.TYPE_8__* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %352

342:                                              ; preds = %327
  %343 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %344 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = call i32 @spin_unlock(i32* %345)
  %347 = load i32, i32* @KERN_WARNING, align 4
  %348 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %349 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %347, i32 %350, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  br label %460

352:                                              ; preds = %327
  %353 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %354 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %355 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @get_pcl(%struct.ti_lynx* %353, i32 %357, %struct.ti_pcl* %11)
  %359 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %360 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %359, i32 0, i32 7
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call %struct.hpsb_packet* @driver_packet(i32 %363)
  store %struct.hpsb_packet* %364, %struct.hpsb_packet** %13, align 8
  %365 = load %struct.hpsb_packet*, %struct.hpsb_packet** %13, align 8
  %366 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %365, i32 0, i32 2
  %367 = call i32 @list_del_init(i32* %366)
  %368 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %369 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %372 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %371, i32 0, i32 7
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.hpsb_packet*, %struct.hpsb_packet** %13, align 8
  %376 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %379 = call i32 @pci_unmap_single(i32 %370, i32 %374, i64 %377, i32 %378)
  %380 = load %struct.hpsb_packet*, %struct.hpsb_packet** %13, align 8
  %381 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %397

384:                                              ; preds = %352
  %385 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %386 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %385, i32 0, i32 6
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %389 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %388, i32 0, i32 7
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.hpsb_packet*, %struct.hpsb_packet** %13, align 8
  %393 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %396 = call i32 @pci_unmap_single(i32 %387, i32 %391, i64 %394, i32 %395)
  br label %397

397:                                              ; preds = %384, %352
  %398 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %399 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %398, i32 0, i32 7
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  %401 = call i64 @list_empty(%struct.TYPE_8__* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %407, label %403

403:                                              ; preds = %397
  %404 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %405 = load i32, i32* @hpsb_async, align 4
  %406 = call i32 @send_next(%struct.ti_lynx* %404, i32 %405)
  br label %407

407:                                              ; preds = %403, %397
  %408 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %409 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %408, i32 0, i32 7
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  %411 = call i32 @spin_unlock(i32* %410)
  %412 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %11, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @DMA_CHAN_STAT_PKTCMPL, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %448

417:                                              ; preds = %407
  %418 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %11, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @DMA_CHAN_STAT_SPECIALACK, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %442

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %11, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = ashr i32 %425, 15
  %427 = and i32 %426, 15
  store i32 %427, i32* %12, align 4
  %428 = load i32, i32* @KERN_INFO, align 4
  %429 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %430 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %12, align 4
  %433 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %428, i32 %431, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* %12, align 4
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %438

436:                                              ; preds = %423
  %437 = load i32, i32* @ACKX_TIMEOUT, align 4
  br label %440

438:                                              ; preds = %423
  %439 = load i32, i32* @ACKX_SEND_ERROR, align 4
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i32 [ %437, %436 ], [ %439, %438 ]
  store i32 %441, i32* %12, align 4
  br label %447

442:                                              ; preds = %417
  %443 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %11, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = ashr i32 %444, 15
  %446 = and i32 %445, 15
  store i32 %446, i32* %12, align 4
  br label %447

447:                                              ; preds = %442, %440
  br label %455

448:                                              ; preds = %407
  %449 = load i32, i32* @KERN_INFO, align 4
  %450 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %451 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 4
  %453 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %449, i32 %452, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %454 = load i32, i32* @ACKX_SEND_ERROR, align 4
  store i32 %454, i32* %12, align 4
  br label %455

455:                                              ; preds = %448, %447
  %456 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %457 = load %struct.hpsb_packet*, %struct.hpsb_packet** %13, align 8
  %458 = load i32, i32* %12, align 4
  %459 = call i32 @hpsb_packet_sent(%struct.hpsb_host* %456, %struct.hpsb_packet* %457, i32 %458)
  br label %460

460:                                              ; preds = %455, %342
  br label %461

461:                                              ; preds = %460, %321
  %462 = load i32, i32* %8, align 4
  %463 = load i32, i32* @CHANNEL_ISO_SEND, align 4
  %464 = call i32 @PCI_INT_DMA_HLT(i32 %463)
  %465 = and i32 %462, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %591

467:                                              ; preds = %461
  %468 = load i32, i32* @KERN_DEBUG, align 4
  %469 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %470 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 4
  %472 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %468, i32 %471, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %473 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %474 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %473, i32 0, i32 5
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 0
  %476 = call i32 @spin_lock(i32* %475)
  %477 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %478 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 4
  %480 = call i64 @list_empty(%struct.TYPE_8__* %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %492

482:                                              ; preds = %467
  %483 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %484 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 0
  %486 = call i32 @spin_unlock(i32* %485)
  %487 = load i32, i32* @KERN_ERR, align 4
  %488 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %489 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 4
  %491 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %487, i32 %490, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0))
  br label %590

492:                                              ; preds = %467
  %493 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %494 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %495 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %494, i32 0, i32 5
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 5
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @get_pcl(%struct.ti_lynx* %493, i32 %497, %struct.ti_pcl* %14)
  %499 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %500 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %499, i32 0, i32 5
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 4
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = call %struct.hpsb_packet* @driver_packet(i32 %503)
  store %struct.hpsb_packet* %504, %struct.hpsb_packet** %16, align 8
  %505 = load %struct.hpsb_packet*, %struct.hpsb_packet** %16, align 8
  %506 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %505, i32 0, i32 2
  %507 = call i32 @list_del_init(i32* %506)
  %508 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %509 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %508, i32 0, i32 6
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %512 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %511, i32 0, i32 5
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = load %struct.hpsb_packet*, %struct.hpsb_packet** %16, align 8
  %516 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %519 = call i32 @pci_unmap_single(i32 %510, i32 %514, i64 %517, i32 %518)
  %520 = load %struct.hpsb_packet*, %struct.hpsb_packet** %16, align 8
  %521 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %537

524:                                              ; preds = %492
  %525 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %526 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %525, i32 0, i32 6
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %529 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = load %struct.hpsb_packet*, %struct.hpsb_packet** %16, align 8
  %533 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %536 = call i32 @pci_unmap_single(i32 %527, i32 %531, i64 %534, i32 %535)
  br label %537

537:                                              ; preds = %524, %492
  %538 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %539 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 0
  %541 = call i32 @spin_unlock(i32* %540)
  %542 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %14, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* @DMA_CHAN_STAT_PKTCMPL, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %578

547:                                              ; preds = %537
  %548 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %14, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @DMA_CHAN_STAT_SPECIALACK, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %572

553:                                              ; preds = %547
  %554 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %14, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = ashr i32 %555, 15
  %557 = and i32 %556, 15
  store i32 %557, i32* %15, align 4
  %558 = load i32, i32* @KERN_INFO, align 4
  %559 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %560 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* %15, align 4
  %563 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %558, i32 %561, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %562)
  %564 = load i32, i32* %15, align 4
  %565 = icmp eq i32 %564, 1
  br i1 %565, label %566, label %568

566:                                              ; preds = %553
  %567 = load i32, i32* @ACKX_TIMEOUT, align 4
  br label %570

568:                                              ; preds = %553
  %569 = load i32, i32* @ACKX_SEND_ERROR, align 4
  br label %570

570:                                              ; preds = %568, %566
  %571 = phi i32 [ %567, %566 ], [ %569, %568 ]
  store i32 %571, i32* %15, align 4
  br label %577

572:                                              ; preds = %547
  %573 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %14, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = ashr i32 %574, 15
  %576 = and i32 %575, 15
  store i32 %576, i32* %15, align 4
  br label %577

577:                                              ; preds = %572, %570
  br label %585

578:                                              ; preds = %537
  %579 = load i32, i32* @KERN_INFO, align 4
  %580 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %581 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %580, i32 0, i32 4
  %582 = load i32, i32* %581, align 4
  %583 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %579, i32 %582, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  %584 = load i32, i32* @ACKX_SEND_ERROR, align 4
  store i32 %584, i32* %15, align 4
  br label %585

585:                                              ; preds = %578, %577
  %586 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %587 = load %struct.hpsb_packet*, %struct.hpsb_packet** %16, align 8
  %588 = load i32, i32* %15, align 4
  %589 = call i32 @hpsb_packet_sent(%struct.hpsb_host* %586, %struct.hpsb_packet* %587, i32 %588)
  br label %590

590:                                              ; preds = %585, %482
  br label %591

591:                                              ; preds = %590, %461
  %592 = load i32, i32* %8, align 4
  %593 = load i32, i32* @CHANNEL_ASYNC_RCV, align 4
  %594 = call i32 @PCI_INT_DMA_HLT(i32 %593)
  %595 = and i32 %592, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %656

597:                                              ; preds = %591
  %598 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %599 = load i32, i32* @CHANNEL_ASYNC_RCV, align 4
  %600 = call i32 @DMA_CHAN_STAT(i32 %599)
  %601 = call i8* @reg_read(%struct.ti_lynx* %598, i32 %600)
  %602 = ptrtoint i8* %601 to i32
  store i32 %602, i32* %17, align 4
  %603 = load i32, i32* @KERN_DEBUG, align 4
  %604 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %605 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* %17, align 4
  %608 = and i32 %607, 8191
  %609 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %603, i32 %606, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %608)
  %610 = load i32, i32* %17, align 4
  %611 = load i32, i32* @DMA_CHAN_STAT_SELFID, align 4
  %612 = and i32 %610, %611
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %622

614:                                              ; preds = %597
  %615 = load i32, i32* %17, align 4
  %616 = and i32 %615, 8191
  %617 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %618 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %617, i32 0, i32 0
  store i32 %616, i32* %618, align 8
  %619 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %620 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %621 = call i32 @handle_selfid(%struct.ti_lynx* %619, %struct.hpsb_host* %620)
  br label %649

622:                                              ; preds = %597
  %623 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %624 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %623, i32 0, i32 2
  %625 = load i32*, i32** %624, align 8
  store i32* %625, i32** %18, align 8
  %626 = load i32*, i32** %18, align 8
  %627 = load i32, i32* %626, align 4
  %628 = ashr i32 %627, 4
  %629 = and i32 %628, 15
  %630 = load i32, i32* @TCODE_READQ_RESPONSE, align 4
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %639, label %632

632:                                              ; preds = %622
  %633 = load i32*, i32** %18, align 8
  %634 = load i32, i32* %633, align 4
  %635 = ashr i32 %634, 4
  %636 = and i32 %635, 15
  %637 = load i32, i32* @TCODE_WRITEQ, align 4
  %638 = icmp eq i32 %636, %637
  br i1 %638, label %639, label %643

639:                                              ; preds = %632, %622
  %640 = load i32*, i32** %18, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 3
  %642 = call i32 @cpu_to_be32s(i32* %641)
  br label %643

643:                                              ; preds = %639, %632
  %644 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %645 = load i32*, i32** %18, align 8
  %646 = load i32, i32* %17, align 4
  %647 = and i32 %646, 8191
  %648 = call i32 @hpsb_packet_received(%struct.hpsb_host* %644, i32* %645, i32 %647, i32 0)
  br label %649

649:                                              ; preds = %643, %614
  %650 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %651 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %652 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %651, i32 0, i32 3
  %653 = load i32, i32* %652, align 8
  %654 = load i32, i32* @CHANNEL_ASYNC_RCV, align 4
  %655 = call i32 @run_pcl(%struct.ti_lynx* %650, i32 %653, i32 %654)
  br label %656

656:                                              ; preds = %649, %591
  %657 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %657, i32* %3, align 4
  br label %658

658:                                              ; preds = %656, %36
  %659 = load i32, i32* %3, align 4
  ret i32 %659
}

declare dso_local i8* @reg_read(%struct.ti_lynx*, i32) #1

declare dso_local i32 @PRINTD(i32, i32, i8*, ...) #1

declare dso_local i32 @reg_write(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @PRINT(i32, i32, i8*, ...) #1

declare dso_local i32 @hpsb_bus_reset(%struct.hpsb_host*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle_selfid(%struct.ti_lynx*, %struct.hpsb_host*) #1

declare dso_local i32 @PCI_INT_DMA_HLT(i32) #1

declare dso_local i32 @DMA_CHAN_STAT(i32) #1

declare dso_local i32 @DMA_WORD1_CMP_ENABLE(i32) #1

declare dso_local i32 @run_sub_pcl(%struct.ti_lynx*, i32, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @list_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @get_pcl(%struct.ti_lynx*, i32, %struct.ti_pcl*) #1

declare dso_local %struct.hpsb_packet* @driver_packet(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @send_next(%struct.ti_lynx*, i32) #1

declare dso_local i32 @hpsb_packet_sent(%struct.hpsb_host*, %struct.hpsb_packet*, i32) #1

declare dso_local i32 @cpu_to_be32s(i32*) #1

declare dso_local i32 @hpsb_packet_received(%struct.hpsb_host*, i32*, i32, i32) #1

declare dso_local i32 @run_pcl(%struct.ti_lynx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
