; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c___qeth_l3_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c___qeth_l3_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qeth_card = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setonlin\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@QETH_DIAGS_TRAP_ARM = common dso_local global i32 0, align 4
@CARD_STATE_HARDSETUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"softsetp\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"The LAN is offline\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"4err%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"5err%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@CARD_STATE_SOFTSETUP = common dso_local global i32 0, align 4
@CARD_STATE_RECOVER = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__qeth_l3_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l3_set_online(%struct.ccwgroup_device* %0, i32 %1) #0 {
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
  %11 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_8__* %10)
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
  br label %259

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
  br label %259

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
  br label %259

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
  br label %267

74:                                               ; preds = %65
  %75 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %81 = call i64 @qeth_l3_setup_netdev(%struct.qeth_card* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %267

84:                                               ; preds = %79, %74
  %85 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %86 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %87 = call i64 @qeth_is_diagass_supported(%struct.qeth_card* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %97 = load i32, i32* @QETH_DIAGS_TRAP_ARM, align 4
  %98 = call i64 @qeth_hw_trap(%struct.qeth_card* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %102 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %95, %89
  br label %109

105:                                              ; preds = %84
  %106 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %107 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %104
  %110 = load i32, i32* @CARD_STATE_HARDSETUP, align 4
  %111 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %112 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 7
  %115 = call i32 @memset(i32* %114, i32 0, i32 4)
  %116 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %117 = call i32 @qeth_print_status_message(%struct.qeth_card* %116)
  %118 = load i32, i32* @SETUP, align 4
  %119 = call i32 @QETH_DBF_TEXT(i32 %118, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %121 = call i32 @qeth_send_startlan(%struct.qeth_card* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %109
  %125 = load i32, i32* @SETUP, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @QETH_DBF_TEXT_(i32 %125, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 57472
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %132 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %131, i32 0, i32 6
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = call i32 @dev_warn(i32* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %137 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  br label %145

138:                                              ; preds = %124
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %267

141:                                              ; preds = %109
  %142 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %143 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %144, %130
  %146 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %147 = call i32 @qeth_l3_setadapter_parms(%struct.qeth_card* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @SETUP, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @QETH_DBF_TEXT_(i32 %151, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %156 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %194, label %160

160:                                              ; preds = %154
  %161 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %162 = call i32 @qeth_l3_start_ipassists(%struct.qeth_card* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, i32* @SETUP, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @QETH_DBF_TEXT_(i32 %166, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  br label %267

169:                                              ; preds = %160
  %170 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %171 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %172 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @qeth_l3_set_large_send(%struct.qeth_card* %170, i32 %174)
  %176 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %177 = call i32 @qeth_l3_setrouting_v4(%struct.qeth_card* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %169
  %181 = load i32, i32* @SETUP, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @QETH_DBF_TEXT_(i32 %181, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %169
  %185 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %186 = call i32 @qeth_l3_setrouting_v6(%struct.qeth_card* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* @SETUP, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @QETH_DBF_TEXT_(i32 %190, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %189, %184
  br label %194

194:                                              ; preds = %193, %154
  %195 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %196 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @netif_tx_disable(i32 %197)
  %199 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %200 = call i32 @qeth_init_qdio_queues(%struct.qeth_card* %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %194
  %204 = load i32, i32* @SETUP, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @QETH_DBF_TEXT_(i32 %204, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  br label %267

207:                                              ; preds = %194
  %208 = load i32, i32* @CARD_STATE_SOFTSETUP, align 4
  %209 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %210 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %212 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %211, i32 -1, i32 0)
  %213 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %214 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %213)
  %215 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %216 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %207
  %220 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %221 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @netif_carrier_on(i32 %222)
  br label %229

224:                                              ; preds = %207
  %225 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %226 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @netif_carrier_off(i32 %227)
  br label %229

229:                                              ; preds = %224, %219
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %253

233:                                              ; preds = %229
  %234 = load i32, i32* %5, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %238 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @__qeth_l3_open(i32 %239)
  br label %248

241:                                              ; preds = %233
  %242 = call i32 (...) @rtnl_lock()
  %243 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %244 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @dev_open(i32 %245)
  %247 = call i32 (...) @rtnl_unlock()
  br label %248

248:                                              ; preds = %241, %236
  %249 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %250 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @qeth_l3_set_multicast_list(i32 %251)
  br label %253

253:                                              ; preds = %248, %229
  %254 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %255 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* @KOBJ_CHANGE, align 4
  %258 = call i32 @kobject_uevent(i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %59, %47, %35
  %260 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %261 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %260, i32 0, i32 3
  %262 = call i32 @mutex_unlock(i32* %261)
  %263 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %264 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %263, i32 0, i32 2
  %265 = call i32 @mutex_unlock(i32* %264)
  %266 = load i32, i32* %7, align 4
  store i32 %266, i32* %3, align 4
  br label %299

267:                                              ; preds = %203, %165, %138, %83, %70
  %268 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %269 = call i32 @qeth_l3_stop_card(%struct.qeth_card* %268, i32 0)
  %270 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %271 = call i32 @CARD_DDEV(%struct.qeth_card* %270)
  %272 = call i32 @ccw_device_set_offline(i32 %271)
  %273 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %274 = call i32 @CARD_WDEV(%struct.qeth_card* %273)
  %275 = call i32 @ccw_device_set_offline(i32 %274)
  %276 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %277 = call i32 @CARD_RDEV(%struct.qeth_card* %276)
  %278 = call i32 @ccw_device_set_offline(i32 %277)
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %267
  %283 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %284 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %285 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  br label %290

286:                                              ; preds = %267
  %287 = load i32, i32* @CARD_STATE_DOWN, align 4
  %288 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %289 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %286, %282
  %291 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %292 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %291, i32 0, i32 3
  %293 = call i32 @mutex_unlock(i32* %292)
  %294 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %295 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %294, i32 0, i32 2
  %296 = call i32 @mutex_unlock(i32* %295)
  %297 = load i32, i32* @ENODEV, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %290, %259
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_8__*) #1

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

declare dso_local i64 @qeth_l3_setup_netdev(%struct.qeth_card*) #1

declare dso_local i64 @qeth_is_diagass_supported(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qeth_print_status_message(%struct.qeth_card*) #1

declare dso_local i32 @qeth_send_startlan(%struct.qeth_card*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qeth_l3_setadapter_parms(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipassists(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_set_large_send(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_setrouting_v4(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setrouting_v6(%struct.qeth_card*) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @qeth_init_qdio_queues(%struct.qeth_card*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @__qeth_l3_open(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_open(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_l3_set_multicast_list(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qeth_l3_stop_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
