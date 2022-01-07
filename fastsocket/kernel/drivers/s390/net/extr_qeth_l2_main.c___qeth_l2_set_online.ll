; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.qeth_card = type { i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setonlin\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@QETH_DIAGS_TRAP_ARM = common dso_local global i32 0, align 4
@CARD_STATE_HARDSETUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"softsetp\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"The LAN is offline\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@CARD_STATE_SOFTSETUP = common dso_local global i32 0, align 4
@CARD_STATE_RECOVER = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__qeth_l2_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l2_set_online(%struct.ccwgroup_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccwgroup_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %9, i32 0, i32 0
  %11 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_13__* %10)
  store %struct.qeth_card* %11, %struct.qeth_card** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %13 = icmp ne %struct.qeth_card* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @SETUP, align 4
  %24 = call i32 @QETH_DBF_TEXT(i32 %23, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @SETUP, align 4
  %26 = call i32 @QETH_DBF_HEX(i32 %25, i32 2, %struct.qeth_card** %6, i32 8)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %31 = call i32 @CARD_RDEV(%struct.qeth_card* %30)
  %32 = call i32 @ccw_device_set_online(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @SETUP, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @QETH_DBF_TEXT_(i32 %36, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %271

41:                                               ; preds = %2
  %42 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %43 = call i32 @CARD_WDEV(%struct.qeth_card* %42)
  %44 = call i32 @ccw_device_set_online(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @SETUP, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @QETH_DBF_TEXT_(i32 %48, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %271

53:                                               ; preds = %41
  %54 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %55 = call i32 @CARD_DDEV(%struct.qeth_card* %54)
  %56 = call i32 @ccw_device_set_online(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @SETUP, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @QETH_DBF_TEXT_(i32 %60, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %271

65:                                               ; preds = %53
  %66 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %67 = call i32 @qeth_core_hardsetup_card(%struct.qeth_card* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @SETUP, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @QETH_DBF_TEXT_(i32 %71, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %279

74:                                               ; preds = %65
  %75 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %81 = call i64 @qeth_l2_setup_netdev(%struct.qeth_card* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %279

84:                                               ; preds = %79, %74
  %85 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %93 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %94 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %93, i32 0, i32 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @qeth_l2_send_setmac(%struct.qeth_card* %92, i32* %98)
  br label %100

100:                                              ; preds = %91, %84
  %101 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %102 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %103 = call i64 @qeth_is_diagass_supported(%struct.qeth_card* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %107 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %113 = load i32, i32* @QETH_DIAGS_TRAP_ARM, align 4
  %114 = call i64 @qeth_hw_trap(%struct.qeth_card* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %118 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %111, %105
  br label %125

121:                                              ; preds = %100
  %122 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %123 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %120
  %126 = load i32, i32* @CARD_STATE_HARDSETUP, align 4
  %127 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %130 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %129, i32 0, i32 7
  %131 = call i32 @memset(i32* %130, i32 0, i32 4)
  %132 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %133 = call i32 @qeth_print_status_message(%struct.qeth_card* %132)
  %134 = load i32, i32* @SETUP, align 4
  %135 = call i32 @QETH_DBF_TEXT(i32 %134, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %137 = call i32 @qeth_send_startlan(%struct.qeth_card* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %125
  %141 = load i32, i32* @SETUP, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @QETH_DBF_TEXT_(i32 %141, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 57472
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %148 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %147, i32 0, i32 6
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %152 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %153 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  br label %161

154:                                              ; preds = %140
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %279

157:                                              ; preds = %125
  %158 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %159 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %146
  %162 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %163 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @QETH_CARD_TYPE_OSD, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %161
  %169 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %170 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %168, %161
  %176 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %177 = call i32 @qeth_set_access_ctrl_online(%struct.qeth_card* %176, i32 0)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* @ENODEV, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  br label %279

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %168
  %185 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %186 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %193 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @QETH_CARD_TYPE_OSM, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %200 = call i32 @qeth_l2_process_vlans(%struct.qeth_card* %199)
  br label %201

201:                                              ; preds = %198, %191, %184
  %202 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %203 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %202, i32 0, i32 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = call i32 @netif_tx_disable(%struct.TYPE_12__* %204)
  %206 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %207 = call i32 @qeth_init_qdio_queues(%struct.qeth_card* %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i32, i32* @SETUP, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @QETH_DBF_TEXT_(i32 %211, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  br label %279

214:                                              ; preds = %201
  %215 = load i32, i32* @CARD_STATE_SOFTSETUP, align 4
  %216 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %217 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %219 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %214
  %223 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %224 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %223, i32 0, i32 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = call i32 @netif_carrier_on(%struct.TYPE_12__* %225)
  br label %232

227:                                              ; preds = %214
  %228 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %229 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %228, i32 0, i32 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = call i32 @netif_carrier_off(%struct.TYPE_12__* %230)
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %234 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %233, i32 -1, i32 0)
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %265

238:                                              ; preds = %232
  %239 = load i32, i32* %5, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  %242 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %243 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %241
  %249 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %250 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %249, i32 0, i32 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = call i32 @__qeth_l2_open(%struct.TYPE_12__* %251)
  br label %260

253:                                              ; preds = %241, %238
  %254 = call i32 (...) @rtnl_lock()
  %255 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %256 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %255, i32 0, i32 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = call i32 @dev_open(%struct.TYPE_12__* %257)
  %259 = call i32 (...) @rtnl_unlock()
  br label %260

260:                                              ; preds = %253, %248
  %261 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %262 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %261, i32 0, i32 4
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = call i32 @qeth_l2_set_multicast_list(%struct.TYPE_12__* %263)
  br label %265

265:                                              ; preds = %260, %232
  %266 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %267 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32, i32* @KOBJ_CHANGE, align 4
  %270 = call i32 @kobject_uevent(i32* %268, i32 %269)
  br label %271

271:                                              ; preds = %265, %59, %47, %35
  %272 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %273 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %272, i32 0, i32 3
  %274 = call i32 @mutex_unlock(i32* %273)
  %275 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %276 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %275, i32 0, i32 2
  %277 = call i32 @mutex_unlock(i32* %276)
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %3, align 4
  br label %311

279:                                              ; preds = %210, %180, %154, %83, %70
  %280 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %281 = call i32 @qeth_l2_stop_card(%struct.qeth_card* %280, i32 0)
  %282 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %283 = call i32 @CARD_DDEV(%struct.qeth_card* %282)
  %284 = call i32 @ccw_device_set_offline(i32 %283)
  %285 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %286 = call i32 @CARD_WDEV(%struct.qeth_card* %285)
  %287 = call i32 @ccw_device_set_offline(i32 %286)
  %288 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %289 = call i32 @CARD_RDEV(%struct.qeth_card* %288)
  %290 = call i32 @ccw_device_set_offline(i32 %289)
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %279
  %295 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %296 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %297 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  br label %302

298:                                              ; preds = %279
  %299 = load i32, i32* @CARD_STATE_DOWN, align 4
  %300 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %301 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %298, %294
  %303 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %304 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %303, i32 0, i32 3
  %305 = call i32 @mutex_unlock(i32* %304)
  %306 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %307 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %306, i32 0, i32 2
  %308 = call i32 @mutex_unlock(i32* %307)
  %309 = load i32, i32* @ENODEV, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %302, %271
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_13__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i32 @ccw_device_set_online(i32) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @CARD_WDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @qeth_core_hardsetup_card(%struct.qeth_card*) #1

declare dso_local i64 @qeth_l2_setup_netdev(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_send_setmac(%struct.qeth_card*, i32*) #1

declare dso_local i64 @qeth_is_diagass_supported(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qeth_print_status_message(%struct.qeth_card*) #1

declare dso_local i32 @qeth_send_startlan(%struct.qeth_card*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qeth_set_access_ctrl_online(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l2_process_vlans(%struct.qeth_card*) #1

declare dso_local i32 @netif_tx_disable(%struct.TYPE_12__*) #1

declare dso_local i32 @qeth_init_qdio_queues(%struct.qeth_card*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_12__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_12__*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @__qeth_l2_open(%struct.TYPE_12__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_open(%struct.TYPE_12__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_l2_set_multicast_list(%struct.TYPE_12__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qeth_l2_stop_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
