; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_config_fc_after_link_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_config_fc_after_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_mac_info = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i64*, i64*)* }
%struct.e1000_hw.0 = type opaque

@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error forcing flow control settings\0A\00", align 1
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", align 1
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i64 0, align 8
@LPA_PAUSE_CAP = common dso_local global i64 0, align 8
@e1000_fc_full = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@e1000_fc_rx_pause = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Flow Control = Rx PAUSE frames only.\0A\00", align 1
@ADVERTISE_PAUSE_ASYM = common dso_local global i64 0, align 8
@LPA_PAUSE_ASYM = common dso_local global i64 0, align 8
@e1000_fc_tx_pause = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Flow Control = Tx PAUSE frames only.\0A\00", align 1
@e1000_fc_none = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i64 0, align 8
@PCS_LSTAT = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_AN_COMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"PCS Auto Neg has not completed.\0A\00", align 1
@PCS_ANADV = common dso_local global i32 0, align 4
@PCS_LPAB = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@PCS_LCTL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_FCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 2
  store %struct.e1000_mac_info* %16, %struct.e1000_mac_info** %4, align 8
  store i64 0, i64* %5, align 8
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_media_type_fiber, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %21
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = call i64 @e1000e_force_mac_fc(%struct.e1000_hw* %36)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %35, %28
  br label %50

39:                                               ; preds = %1
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @e1000_media_type_copper, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = call i64 @e1000e_force_mac_fc(%struct.e1000_hw* %47)
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* %5, align 8
  store i64 %55, i64* %2, align 8
  br label %365

56:                                               ; preds = %50
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @e1000_media_type_copper, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %230

63:                                               ; preds = %56
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %230

68:                                               ; preds = %63
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = load i32, i32* @MII_BMSR, align 4
  %71 = call i64 @e1e_rphy(%struct.e1000_hw* %69, i32 %70, i64* %10)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %2, align 8
  br label %365

76:                                               ; preds = %68
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = load i32, i32* @MII_BMSR, align 4
  %79 = call i64 @e1e_rphy(%struct.e1000_hw* %77, i32 %78, i64* %10)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %2, align 8
  br label %365

84:                                               ; preds = %76
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @BMSR_ANEGCOMPLETE, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = call i32 @e_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i64, i64* %5, align 8
  store i64 %91, i64* %2, align 8
  br label %365

92:                                               ; preds = %84
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = load i32, i32* @MII_ADVERTISE, align 4
  %95 = call i64 @e1e_rphy(%struct.e1000_hw* %93, i32 %94, i64* %11)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %5, align 8
  store i64 %99, i64* %2, align 8
  br label %365

100:                                              ; preds = %92
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = load i32, i32* @MII_LPA, align 4
  %103 = call i64 @e1e_rphy(%struct.e1000_hw* %101, i32 %102, i64* %12)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i64, i64* %5, align 8
  store i64 %107, i64* %2, align 8
  br label %365

108:                                              ; preds = %100
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @ADVERTISE_PAUSE_CAP, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %108
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @LPA_PAUSE_CAP, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @e1000_fc_full, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load i64, i64* @e1000_fc_full, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %138

132:                                              ; preds = %118
  %133 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  %137 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %138

138:                                              ; preds = %132, %125
  br label %199

139:                                              ; preds = %113, %108
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @ADVERTISE_PAUSE_CAP, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %165, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* @ADVERTISE_PAUSE_ASYM, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %144
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* @LPA_PAUSE_CAP, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @LPA_PAUSE_ASYM, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i8*, i8** @e1000_fc_tx_pause, align 8
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %162 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %198

165:                                              ; preds = %154, %149, %144, %139
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @ADVERTISE_PAUSE_CAP, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %165
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @ADVERTISE_PAUSE_ASYM, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %170
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* @LPA_PAUSE_CAP, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %175
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* @LPA_PAUSE_ASYM, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %187 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %188 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i8* %186, i8** %189, align 8
  %190 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %197

191:                                              ; preds = %180, %175, %170, %165
  %192 = load i8*, i8** @e1000_fc_none, align 8
  %193 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %194 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  store i8* %192, i8** %195, align 8
  %196 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %197

197:                                              ; preds = %191, %185
  br label %198

198:                                              ; preds = %197, %159
  br label %199

199:                                              ; preds = %198, %138
  %200 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %201 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64 (%struct.e1000_hw.0*, i64*, i64*)*, i64 (%struct.e1000_hw.0*, i64*, i64*)** %202, align 8
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = bitcast %struct.e1000_hw* %204 to %struct.e1000_hw.0*
  %206 = call i64 %203(%struct.e1000_hw.0* %205, i64* %13, i64* %14)
  store i64 %206, i64* %5, align 8
  %207 = load i64, i64* %5, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %211 = load i64, i64* %5, align 8
  store i64 %211, i64* %2, align 8
  br label %365

212:                                              ; preds = %199
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* @HALF_DUPLEX, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i8*, i8** @e1000_fc_none, align 8
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %219 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  store i8* %217, i8** %220, align 8
  br label %221

221:                                              ; preds = %216, %212
  %222 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %223 = call i64 @e1000e_force_mac_fc(%struct.e1000_hw* %222)
  store i64 %223, i64* %5, align 8
  %224 = load i64, i64* %5, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %228 = load i64, i64* %5, align 8
  store i64 %228, i64* %2, align 8
  br label %365

229:                                              ; preds = %221
  br label %230

230:                                              ; preds = %229, %63, %56
  %231 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %232 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %364

237:                                              ; preds = %230
  %238 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %239 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %364

242:                                              ; preds = %237
  %243 = load i32, i32* @PCS_LSTAT, align 4
  %244 = call i32 @er32(i32 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @E1000_PCS_LSTS_AN_COMPLETE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %242
  %250 = call i32 @e_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %251 = load i64, i64* %5, align 8
  store i64 %251, i64* %2, align 8
  br label %365

252:                                              ; preds = %242
  %253 = load i32, i32* @PCS_ANADV, align 4
  %254 = call i32 @er32(i32 %253)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* @PCS_LPAB, align 4
  %256 = call i32 @er32(i32 %255)
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %287

261:                                              ; preds = %252
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %287

266:                                              ; preds = %261
  %267 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %268 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @e1000_fc_full, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load i64, i64* @e1000_fc_full, align 8
  %275 = inttoptr i64 %274 to i8*
  %276 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %277 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  store i8* %275, i8** %278, align 8
  %279 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %286

280:                                              ; preds = %266
  %281 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %282 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %283 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  store i8* %281, i8** %284, align 8
  %285 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %286

286:                                              ; preds = %280, %273
  br label %347

287:                                              ; preds = %261, %252
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %313, label %292

292:                                              ; preds = %287
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %313

297:                                              ; preds = %292
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %297
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load i8*, i8** @e1000_fc_tx_pause, align 8
  %309 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %310 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 1
  store i8* %308, i8** %311, align 8
  %312 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %346

313:                                              ; preds = %302, %297, %292, %287
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %339

318:                                              ; preds = %313
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %339

323:                                              ; preds = %318
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %339, label %328

328:                                              ; preds = %323
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %335 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %336 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  store i8* %334, i8** %337, align 8
  %338 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %345

339:                                              ; preds = %328, %323, %318, %313
  %340 = load i8*, i8** @e1000_fc_none, align 8
  %341 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %342 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  store i8* %340, i8** %343, align 8
  %344 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %345

345:                                              ; preds = %339, %333
  br label %346

346:                                              ; preds = %345, %307
  br label %347

347:                                              ; preds = %346, %286
  %348 = load i32, i32* @PCS_LCTL, align 4
  %349 = call i32 @er32(i32 %348)
  store i32 %349, i32* %9, align 4
  %350 = load i32, i32* @E1000_PCS_LCTL_FORCE_FCTRL, align 4
  %351 = load i32, i32* %9, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %9, align 4
  %353 = load i32, i32* @PCS_LCTL, align 4
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @ew32(i32 %353, i32 %354)
  %356 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %357 = call i64 @e1000e_force_mac_fc(%struct.e1000_hw* %356)
  store i64 %357, i64* %5, align 8
  %358 = load i64, i64* %5, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %347
  %361 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %362 = load i64, i64* %5, align 8
  store i64 %362, i64* %2, align 8
  br label %365

363:                                              ; preds = %347
  br label %364

364:                                              ; preds = %363, %237, %230
  store i64 0, i64* %2, align 8
  br label %365

365:                                              ; preds = %364, %360, %249, %226, %209, %106, %98, %89, %82, %74, %53
  %366 = load i64, i64* %2, align 8
  ret i64 %366
}

declare dso_local i64 @e1000e_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
