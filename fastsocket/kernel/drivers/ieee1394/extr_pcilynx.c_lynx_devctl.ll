; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_lynx_devctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_lynx_devctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.hpsb_host = type { %struct.ti_lynx* }
%struct.ti_lynx = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hpsb_packet = type { i32, i32, i32 }
%struct.ti_pcl = type { i32 }

@packet_list = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@LINK_INT_STATUS = common dso_local global i32 0, align 4
@LINK_INT_PHY_BUSRESET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cannot reset bus, because read phy reg failed\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"resetting bus (short bus reset) on request\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot do short bus reset, because of old phy\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"resetting bus (long bus reset) on request\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"resetting bus (short bus reset, no force_root) on request\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"resetting bus (long bus reset, no force_root) on request\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"resetting bus (short bus reset, force_root set) on request\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"resetting bus (long bus reset, force_root set) on request\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"unknown argument for reset_bus command %d\00", align 1
@CYCLE_TIMER = common dso_local global i32 0, align 4
@LINK_ID = common dso_local global i32 0, align 4
@LINK_CONTROL = common dso_local global i32 0, align 4
@LINK_CONTROL_CYCMASTER = common dso_local global i32 0, align 4
@CHANNEL_ASYNC_SEND = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"no async packet in PCL to cancel\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cancelling async packet, that was already in PCL\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DMA_CHAN_STAT_PKTCMPL = common dso_local global i32 0, align 4
@DMA_CHAN_STAT_SPECIALACK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"special ack %d\00", align 1
@ACKX_TIMEOUT = common dso_local global i32 0, align 4
@ACKX_SEND_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"async packet was not completed\00", align 1
@ACKX_ABORTED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"unknown devctl command %d\00", align 1
@CHANNEL_ISO_RCV = common dso_local global i32 0, align 4
@DMA_WORD1_CMP_ENABLE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32)* @lynx_devctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynx_devctl(%struct.hpsb_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_lynx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsb_packet*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ti_pcl, align 4
  %13 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %15 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %14, i32 0, i32 0
  %16 = load %struct.ti_lynx*, %struct.ti_lynx** %15, align 8
  store %struct.ti_lynx* %16, %struct.ti_lynx** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @packet_list, i32 0, i32 0), align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %461 [
    i32 133, label %20
    i32 139, label %277
    i32 131, label %281
    i32 132, label %286
    i32 141, label %297
    i32 140, label %311
  ]

20:                                               ; preds = %3
  %21 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %22 = load i32, i32* @LINK_INT_STATUS, align 4
  %23 = call i32 @reg_read(%struct.ti_lynx* %21, i32 %22)
  %24 = load i32, i32* @LINK_INT_PHY_BUSRESET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %468

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %269 [
    i32 130, label %30
    i32 136, label %69
    i32 128, label %95
    i32 134, label %155
    i32 129, label %183
    i32 135, label %243
  ]

30:                                               ; preds = %28
  %31 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %32 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %38 = call i32 @get_phy_reg(%struct.ti_lynx* %37, i32 5)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %44 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %42, i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, 64
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @KERN_INFO, align 4
  %51 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %52 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %50, i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %56 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  %57 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %58 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @set_phy_reg(%struct.ti_lynx* %59, i32 5, i32 %60)
  br label %276

62:                                               ; preds = %30
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %65 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %63, i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %28, %68
  %70 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %71 = call i32 @get_phy_reg(%struct.ti_lynx* %70, i32 1)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %77 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %75, i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, 64
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @KERN_INFO, align 4
  %84 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %85 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %83, i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %89 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 4
  %90 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %91 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  %92 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @set_phy_reg(%struct.ti_lynx* %92, i32 1, i32 %93)
  br label %276

95:                                               ; preds = %28
  %96 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %97 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %148

101:                                              ; preds = %95
  %102 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %103 = call i32 @get_phy_reg(%struct.ti_lynx* %102, i32 1)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @KERN_ERR, align 4
  %108 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %109 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %107, i32 %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

112:                                              ; preds = %101
  %113 = load i32, i32* %11, align 4
  %114 = and i32 %113, 128
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, -129
  store i32 %118, i32* %11, align 4
  %119 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @set_phy_reg(%struct.ti_lynx* %119, i32 1, i32 %120)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %124 = call i32 @get_phy_reg(%struct.ti_lynx* %123, i32 5)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @KERN_ERR, align 4
  %129 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %130 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %128, i32 %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

133:                                              ; preds = %122
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, 64
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @KERN_INFO, align 4
  %137 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %138 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %136, i32 %139, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %141 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %142 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 4
  %143 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %144 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %143, i32 0, i32 1
  store i32 -1, i32* %144, align 4
  %145 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @set_phy_reg(%struct.ti_lynx* %145, i32 5, i32 %146)
  br label %276

148:                                              ; preds = %95
  %149 = load i32, i32* @KERN_INFO, align 4
  %150 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %151 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %149, i32 %152, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %154

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %28, %154
  %156 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %157 = call i32 @get_phy_reg(%struct.ti_lynx* %156, i32 1)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %163 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %161, i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

166:                                              ; preds = %155
  %167 = load i32, i32* %11, align 4
  %168 = and i32 %167, -129
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %169, 64
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* @KERN_INFO, align 4
  %172 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %173 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %171, i32 %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %176 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %177 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %176, i32 0, i32 0
  store i32 -1, i32* %177, align 4
  %178 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %179 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %178, i32 0, i32 1
  store i32 -1, i32* %179, align 4
  %180 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @set_phy_reg(%struct.ti_lynx* %180, i32 1, i32 %181)
  br label %276

183:                                              ; preds = %28
  %184 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %185 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %236

189:                                              ; preds = %183
  %190 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %191 = call i32 @get_phy_reg(%struct.ti_lynx* %190, i32 1)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i32, i32* @KERN_ERR, align 4
  %196 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %197 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %195, i32 %198, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

200:                                              ; preds = %189
  %201 = load i32, i32* %11, align 4
  %202 = and i32 %201, 128
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %11, align 4
  %206 = or i32 %205, 128
  store i32 %206, i32* %11, align 4
  %207 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @set_phy_reg(%struct.ti_lynx* %207, i32 1, i32 %208)
  br label %210

210:                                              ; preds = %204, %200
  %211 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %212 = call i32 @get_phy_reg(%struct.ti_lynx* %211, i32 5)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* @KERN_ERR, align 4
  %217 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %218 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %216, i32 %219, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

221:                                              ; preds = %210
  %222 = load i32, i32* %11, align 4
  %223 = or i32 %222, 64
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* @KERN_INFO, align 4
  %225 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %226 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %224, i32 %227, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %229 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %230 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %229, i32 0, i32 0
  store i32 -1, i32* %230, align 4
  %231 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %232 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %231, i32 0, i32 1
  store i32 -1, i32* %232, align 4
  %233 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @set_phy_reg(%struct.ti_lynx* %233, i32 5, i32 %234)
  br label %276

236:                                              ; preds = %183
  %237 = load i32, i32* @KERN_INFO, align 4
  %238 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %239 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %237, i32 %240, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %242

242:                                              ; preds = %236
  br label %243

243:                                              ; preds = %28, %242
  %244 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %245 = call i32 @get_phy_reg(%struct.ti_lynx* %244, i32 1)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load i32, i32* @KERN_ERR, align 4
  %250 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %251 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %249, i32 %252, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %276

254:                                              ; preds = %243
  %255 = load i32, i32* %11, align 4
  %256 = or i32 %255, 192
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* @KERN_INFO, align 4
  %258 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %259 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %257, i32 %260, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %262 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %263 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %262, i32 0, i32 0
  store i32 -1, i32* %263, align 4
  %264 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %265 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %264, i32 0, i32 1
  store i32 -1, i32* %265, align 4
  %266 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @set_phy_reg(%struct.ti_lynx* %266, i32 1, i32 %267)
  br label %276

269:                                              ; preds = %28
  %270 = load i32, i32* @KERN_ERR, align 4
  %271 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %272 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %6, align 4
  %275 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %270, i32 %273, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %274)
  store i32 -1, i32* %8, align 4
  br label %276

276:                                              ; preds = %269, %254, %248, %221, %215, %194, %166, %160, %133, %127, %106, %80, %74, %47, %41
  br label %468

277:                                              ; preds = %3
  %278 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %279 = load i32, i32* @CYCLE_TIMER, align 4
  %280 = call i32 @reg_read(%struct.ti_lynx* %278, i32 %279)
  store i32 %280, i32* %8, align 4
  br label %468

281:                                              ; preds = %3
  %282 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %283 = load i32, i32* @CYCLE_TIMER, align 4
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @reg_write(%struct.ti_lynx* %282, i32 %283, i32 %284)
  br label %468

286:                                              ; preds = %3
  %287 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %288 = load i32, i32* @LINK_ID, align 4
  %289 = load i32, i32* %6, align 4
  %290 = shl i32 %289, 22
  %291 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %292 = load i32, i32* @LINK_ID, align 4
  %293 = call i32 @reg_read(%struct.ti_lynx* %291, i32 %292)
  %294 = and i32 %293, 4128768
  %295 = or i32 %290, %294
  %296 = call i32 @reg_write(%struct.ti_lynx* %287, i32 %288, i32 %295)
  br label %468

297:                                              ; preds = %3
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %302 = load i32, i32* @LINK_CONTROL, align 4
  %303 = load i32, i32* @LINK_CONTROL_CYCMASTER, align 4
  %304 = call i32 @reg_set_bits(%struct.ti_lynx* %301, i32 %302, i32 %303)
  br label %310

305:                                              ; preds = %297
  %306 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %307 = load i32, i32* @LINK_CONTROL, align 4
  %308 = load i32, i32* @LINK_CONTROL_CYCMASTER, align 4
  %309 = call i32 @reg_clear_bits(%struct.ti_lynx* %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %300
  br label %468

311:                                              ; preds = %3
  %312 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %313 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i64, i64* %10, align 8
  %316 = call i32 @spin_lock_irqsave(i32* %314, i64 %315)
  %317 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %318 = load i32, i32* @CHANNEL_ASYNC_SEND, align 4
  %319 = call i32 @DMA_CHAN_CTRL(i32 %318)
  %320 = call i32 @reg_write(%struct.ti_lynx* %317, i32 %319, i32 0)
  %321 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %322 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 5
  %324 = call i32 @list_splice_init(i32* %323, %struct.TYPE_11__* @packet_list)
  %325 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %326 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 3
  %328 = call i32 @list_empty(%struct.TYPE_11__* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %341

330:                                              ; preds = %311
  %331 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %332 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  %334 = load i64, i64* %10, align 8
  %335 = call i32 @spin_unlock_irqrestore(i32* %333, i64 %334)
  %336 = load i32, i32* @KERN_DEBUG, align 4
  %337 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %338 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %336, i32 %339, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %445

341:                                              ; preds = %311
  %342 = load i32, i32* @KERN_INFO, align 4
  %343 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %344 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %342, i32 %345, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %347 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %348 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %349 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @get_pcl(%struct.ti_lynx* %347, i32 %351, %struct.ti_pcl* %12)
  %353 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %354 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call %struct.hpsb_packet* @driver_packet(i32 %357)
  store %struct.hpsb_packet* %358, %struct.hpsb_packet** %9, align 8
  %359 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %360 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %359, i32 0, i32 0
  %361 = call i32 @list_del_init(i32* %360)
  %362 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %363 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %366 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %370 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %373 = call i32 @pci_unmap_single(i32 %364, i32 %368, i32 %371, i32 %372)
  %374 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %375 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %391

378:                                              ; preds = %341
  %379 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %380 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %383 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %387 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %390 = call i32 @pci_unmap_single(i32 %381, i32 %385, i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %378, %341
  %392 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %393 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %392, i32 0, i32 4
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = load i64, i64* %10, align 8
  %396 = call i32 @spin_unlock_irqrestore(i32* %394, i64 %395)
  %397 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %12, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @DMA_CHAN_STAT_PKTCMPL, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %433

402:                                              ; preds = %391
  %403 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %12, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @DMA_CHAN_STAT_SPECIALACK, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %427

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %12, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = ashr i32 %410, 15
  %412 = and i32 %411, 15
  store i32 %412, i32* %13, align 4
  %413 = load i32, i32* @KERN_INFO, align 4
  %414 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %415 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %13, align 4
  %418 = call i32 (i32, i32, i8*, ...) @PRINTD(i32 %413, i32 %416, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %417)
  %419 = load i32, i32* %13, align 4
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %423

421:                                              ; preds = %408
  %422 = load i32, i32* @ACKX_TIMEOUT, align 4
  br label %425

423:                                              ; preds = %408
  %424 = load i32, i32* @ACKX_SEND_ERROR, align 4
  br label %425

425:                                              ; preds = %423, %421
  %426 = phi i32 [ %422, %421 ], [ %424, %423 ]
  store i32 %426, i32* %13, align 4
  br label %432

427:                                              ; preds = %402
  %428 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %12, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = ashr i32 %429, 15
  %431 = and i32 %430, 15
  store i32 %431, i32* %13, align 4
  br label %432

432:                                              ; preds = %427, %425
  br label %440

433:                                              ; preds = %391
  %434 = load i32, i32* @KERN_INFO, align 4
  %435 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %436 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %434, i32 %437, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %439 = load i32, i32* @ACKX_ABORTED, align 4
  store i32 %439, i32* %13, align 4
  br label %440

440:                                              ; preds = %433, %432
  %441 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %442 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %443 = load i32, i32* %13, align 4
  %444 = call i32 @hpsb_packet_sent(%struct.hpsb_host* %441, %struct.hpsb_packet* %442, i32 %443)
  br label %445

445:                                              ; preds = %440, %330
  br label %446

446:                                              ; preds = %450, %445
  %447 = call i32 @list_empty(%struct.TYPE_11__* @packet_list)
  %448 = icmp ne i32 %447, 0
  %449 = xor i1 %448, true
  br i1 %449, label %450, label %460

450:                                              ; preds = %446
  %451 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @packet_list, i32 0, i32 0), align 4
  %452 = call %struct.hpsb_packet* @driver_packet(i32 %451)
  store %struct.hpsb_packet* %452, %struct.hpsb_packet** %9, align 8
  %453 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %454 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %453, i32 0, i32 0
  %455 = call i32 @list_del_init(i32* %454)
  %456 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %457 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %458 = load i32, i32* @ACKX_ABORTED, align 4
  %459 = call i32 @hpsb_packet_sent(%struct.hpsb_host* %456, %struct.hpsb_packet* %457, i32 %458)
  br label %446

460:                                              ; preds = %446
  br label %468

461:                                              ; preds = %3
  %462 = load i32, i32* @KERN_ERR, align 4
  %463 = load %struct.ti_lynx*, %struct.ti_lynx** %7, align 8
  %464 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %5, align 4
  %467 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %462, i32 %465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %466)
  store i32 -1, i32* %8, align 4
  br label %468

468:                                              ; preds = %461, %460, %310, %286, %281, %277, %276, %27
  %469 = load i32, i32* %8, align 4
  ret i32 %469
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @reg_read(%struct.ti_lynx*, i32) #1

declare dso_local i32 @get_phy_reg(%struct.ti_lynx*, i32) #1

declare dso_local i32 @PRINT(i32, i32, i8*, ...) #1

declare dso_local i32 @set_phy_reg(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @reg_write(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @reg_set_bits(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @reg_clear_bits(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMA_CHAN_CTRL(i32) #1

declare dso_local i32 @list_splice_init(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @list_empty(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @PRINTD(i32, i32, i8*, ...) #1

declare dso_local i32 @get_pcl(%struct.ti_lynx*, i32, %struct.ti_pcl*) #1

declare dso_local %struct.hpsb_packet* @driver_packet(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @hpsb_packet_sent(%struct.hpsb_host*, %struct.hpsb_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
