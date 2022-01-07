; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32, i32, i32, i64, i64, %struct.driver_info*, %struct.TYPE_8__*, i64, %struct.TYPE_7__* }
%struct.driver_info = type { i8*, i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)*, i32, i32 (%struct.usbnet*, i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"resumption fail (%d) usbnet usb-%s-%s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"open reset fail (%d) usbnet usb-%s-%s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"can't open; %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"intr submit %d\0A\00", align 1
@EVENT_DEV_OPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"open: enable queueing (rx %d, tx %d) mtu %d %s framing\0A\00", align 1
@FLAG_FRAMING_NC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"NetChip\00", align 1
@FLAG_FRAMING_GL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"GeneSys\00", align 1
@FLAG_FRAMING_Z = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Zaurus\00", align 1
@FLAG_FRAMING_RN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"RNDIS\00", align 1
@FLAG_FRAMING_AX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"ASIX\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@EVENT_RX_KILL = common dso_local global i32 0, align 4
@FLAG_RH_HAS_MANAGE_POWER = common dso_local global i32 0, align 4
@EVENT_NO_RUNTIME_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.driver_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.usbnet* @netdev_priv(%struct.net_device* %7)
  store %struct.usbnet* %8, %struct.usbnet** %4, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 5
  %11 = load %struct.driver_info*, %struct.driver_info** %10, align 8
  store %struct.driver_info* %11, %struct.driver_info** %6, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @usb_autopm_get_interface(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %19 = load i32, i32* @ifup, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %32 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %31, i32 0, i32 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %37 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @netif_info(%struct.usbnet* %18, i32 %19, %struct.TYPE_8__* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %30, i32 %35, i8* %38)
  br label %245

40:                                               ; preds = %1
  %41 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %42 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %41, i32 0, i32 1
  %43 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %42, align 8
  %44 = icmp ne i32 (%struct.usbnet*)* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %47 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %46, i32 0, i32 1
  %48 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %47, align 8
  %49 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %50 = call i32 %48(%struct.usbnet* %49)
  store i32 %50, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %54 = load i32, i32* @ifup, align 4
  %55 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 6
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %72 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @netif_info(%struct.usbnet* %53, i32 %54, %struct.TYPE_8__* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %65, i32 %70, i8* %73)
  br label %240

75:                                               ; preds = %45, %40
  %76 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %77 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %76, i32 0, i32 2
  %78 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %77, align 8
  %79 = icmp ne i32 (%struct.usbnet*)* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %82 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %81, i32 0, i32 2
  %83 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %82, align 8
  %84 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %85 = call i32 %83(%struct.usbnet* %84)
  store i32 %85, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %89 = load i32, i32* @ifup, align 4
  %90 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %91 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @netif_dbg(%struct.usbnet* %88, i32 %89, %struct.TYPE_8__* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %240

95:                                               ; preds = %80, %75
  %96 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %97 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32 @usbnet_status_start(%struct.usbnet* %101, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %108 = load i32, i32* @ifup, align 4
  %109 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %110 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %109, i32 0, i32 6
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @netif_err(%struct.usbnet* %107, i32 %108, %struct.TYPE_8__* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %240

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %117 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %118 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %117, i32 0, i32 1
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @netif_start_queue(%struct.net_device* %120)
  %122 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %123 = load i32, i32* @ifup, align 4
  %124 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %125 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %124, i32 0, i32 6
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %128 = call i64 @RX_QLEN(%struct.usbnet* %127)
  %129 = trunc i64 %128 to i32
  %130 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %131 = call i64 @TX_QLEN(%struct.usbnet* %130)
  %132 = trunc i64 %131 to i32
  %133 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %134 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %133, i32 0, i32 6
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %139 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %138, i32 0, i32 5
  %140 = load %struct.driver_info*, %struct.driver_info** %139, align 8
  %141 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FLAG_FRAMING_NC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %115
  br label %194

147:                                              ; preds = %115
  %148 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %149 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %148, i32 0, i32 5
  %150 = load %struct.driver_info*, %struct.driver_info** %149, align 8
  %151 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @FLAG_FRAMING_GL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %192

157:                                              ; preds = %147
  %158 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %159 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %158, i32 0, i32 5
  %160 = load %struct.driver_info*, %struct.driver_info** %159, align 8
  %161 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @FLAG_FRAMING_Z, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %190

167:                                              ; preds = %157
  %168 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %169 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %168, i32 0, i32 5
  %170 = load %struct.driver_info*, %struct.driver_info** %169, align 8
  %171 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @FLAG_FRAMING_RN, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  br label %188

177:                                              ; preds = %167
  %178 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %179 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %178, i32 0, i32 5
  %180 = load %struct.driver_info*, %struct.driver_info** %179, align 8
  %181 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FLAG_FRAMING_AX, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  br label %188

188:                                              ; preds = %177, %176
  %189 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %176 ], [ %187, %177 ]
  br label %190

190:                                              ; preds = %188, %166
  %191 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %166 ], [ %189, %188 ]
  br label %192

192:                                              ; preds = %190, %156
  %193 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %156 ], [ %191, %190 ]
  br label %194

194:                                              ; preds = %192, %146
  %195 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %146 ], [ %193, %192 ]
  %196 = call i32 @netif_info(%struct.usbnet* %122, i32 %123, %struct.TYPE_8__* %126, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %132, i32 %137, i8* %195)
  %197 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %198 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  %199 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %200 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load i32, i32* @EVENT_RX_KILL, align 4
  %202 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %203 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %202, i32 0, i32 1
  %204 = call i32 @clear_bit(i32 %201, i32* %203)
  %205 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %206 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %205, i32 0, i32 2
  %207 = call i32 @tasklet_schedule(i32* %206)
  %208 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %209 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @FLAG_RH_HAS_MANAGE_POWER, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %194
  %215 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %216 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %215, i32 0, i32 4
  %217 = load i32 (%struct.usbnet*, i32)*, i32 (%struct.usbnet*, i32)** %216, align 8
  %218 = icmp ne i32 (%struct.usbnet*, i32)* %217, null
  br i1 %218, label %219, label %238

219:                                              ; preds = %214
  %220 = load %struct.driver_info*, %struct.driver_info** %6, align 8
  %221 = getelementptr inbounds %struct.driver_info, %struct.driver_info* %220, i32 0, i32 4
  %222 = load i32 (%struct.usbnet*, i32)*, i32 (%struct.usbnet*, i32)** %221, align 8
  %223 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %224 = call i32 %222(%struct.usbnet* %223, i32 1)
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %219
  store i32 0, i32* %5, align 4
  %228 = load i32, i32* @EVENT_NO_RUNTIME_PM, align 4
  %229 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %230 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %229, i32 0, i32 1
  %231 = call i32 @set_bit(i32 %228, i32* %230)
  br label %237

232:                                              ; preds = %219
  %233 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %234 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @usb_autopm_put_interface(i32 %235)
  br label %237

237:                                              ; preds = %232, %227
  br label %238

238:                                              ; preds = %237, %214, %194
  %239 = load i32, i32* %5, align 4
  store i32 %239, i32* %2, align 4
  br label %247

240:                                              ; preds = %106, %87, %52
  %241 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %242 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @usb_autopm_put_interface(i32 %243)
  br label %245

245:                                              ; preds = %240, %17
  %246 = load i32, i32* %5, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %245, %238
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @netif_info(%struct.usbnet*, i32, %struct.TYPE_8__*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @usbnet_status_start(%struct.usbnet*, i32) #1

declare dso_local i32 @netif_err(%struct.usbnet*, i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i64 @RX_QLEN(%struct.usbnet*) #1

declare dso_local i64 @TX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
