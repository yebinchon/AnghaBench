; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_config_fc_after_link_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_config_fc_after_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.e1000_mac_info }
%struct.TYPE_8__ = type { i64, i8*, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_mac_info = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.1*, i64*, i64*)* }
%struct.e1000_hw.1 = type opaque

@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error forcing flow control settings\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", align 1
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i64 0, align 8
@NWAY_LPAR_PAUSE = common dso_local global i64 0, align 8
@e1000_fc_full = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Flow Control = FULL.\0D\0A\00", align 1
@e1000_fc_rx_pause = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Flow Control = RX PAUSE frames only.\0D\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i64 0, align 8
@NWAY_LPAR_ASM_DIR = common dso_local global i64 0, align 8
@e1000_fc_tx_pause = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Flow Control = TX PAUSE frames only.\0D\0A\00", align 1
@e1000_fc_none = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Flow Control = NONE.\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i64 0, align 8
@E1000_PCS_LSTAT = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_AN_COMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"PCS Auto Neg has not completed.\0A\00", align 1
@E1000_PCS_ANADV = common dso_local global i32 0, align 4
@E1000_PCS_LPAB = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Flow Control = Rx PAUSE frames only.\0A\00", align 1
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Flow Control = Tx PAUSE frames only.\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@E1000_PCS_LCTL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_FCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_config_fc_after_link_up(%struct.e1000_hw* %0) #0 {
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
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i64 @igb_force_mac_fc(%struct.e1000_hw* %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %28, %21
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @e1000_media_type_copper, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i64 @igb_force_mac_fc(%struct.e1000_hw* %40)
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %407

48:                                               ; preds = %43
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_media_type_copper, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %270

55:                                               ; preds = %48
  %56 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %270

60:                                               ; preds = %55
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = load i32, i32* @PHY_STATUS, align 4
  %69 = call i64 %65(%struct.e1000_hw.0* %67, i32 %68, i64* %10)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %407

73:                                               ; preds = %60
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %77, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = bitcast %struct.e1000_hw* %79 to %struct.e1000_hw.0*
  %81 = load i32, i32* @PHY_STATUS, align 4
  %82 = call i64 %78(%struct.e1000_hw.0* %80, i32 %81, i64* %10)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %407

86:                                               ; preds = %73
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @MII_SR_AUTONEG_COMPLETE, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = call i32 @hw_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %407

93:                                               ; preds = %86
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %97, align 8
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = bitcast %struct.e1000_hw* %99 to %struct.e1000_hw.0*
  %101 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %102 = call i64 %98(%struct.e1000_hw.0* %100, i32 %101, i64* %11)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %407

106:                                              ; preds = %93
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %110, align 8
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = bitcast %struct.e1000_hw* %112 to %struct.e1000_hw.0*
  %114 = load i32, i32* @PHY_LP_ABILITY, align 4
  %115 = call i64 %111(%struct.e1000_hw.0* %113, i32 %114, i64* %12)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %407

119:                                              ; preds = %106
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %119
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %124
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @e1000_fc_full, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i64, i64* @e1000_fc_full, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %149

143:                                              ; preds = %129
  %144 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  %148 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %136
  br label %239

150:                                              ; preds = %124, %119
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %153 = and i64 %151, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %177, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* @NWAY_AR_ASM_DIR, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %160
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @NWAY_LPAR_ASM_DIR, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i64, i64* @e1000_fc_tx_pause, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i8* %172, i8** %175, align 8
  %176 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %238

177:                                              ; preds = %165, %160, %155, %150
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %180 = and i64 %178, %179
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %203

182:                                              ; preds = %177
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* @NWAY_AR_ASM_DIR, align 8
  %185 = and i64 %183, %184
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %182
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %187
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* @NWAY_LPAR_ASM_DIR, align 8
  %195 = and i64 %193, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  store i8* %198, i8** %201, align 8
  %202 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %237

203:                                              ; preds = %192, %187, %182, %177
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @e1000_fc_none, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %223, label %210

210:                                              ; preds = %203
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %212 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @e1000_fc_tx_pause, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %210
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %219 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %217, %210, %203
  %224 = load i64, i64* @e1000_fc_none, align 8
  %225 = inttoptr i64 %224 to i8*
  %226 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %227 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  store i8* %225, i8** %228, align 8
  %229 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %236

230:                                              ; preds = %217
  %231 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %232 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %233 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  store i8* %231, i8** %234, align 8
  %235 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %236

236:                                              ; preds = %230, %223
  br label %237

237:                                              ; preds = %236, %197
  br label %238

238:                                              ; preds = %237, %170
  br label %239

239:                                              ; preds = %238, %149
  %240 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %241 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i64 (%struct.e1000_hw.1*, i64*, i64*)*, i64 (%struct.e1000_hw.1*, i64*, i64*)** %243, align 8
  %245 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %246 = bitcast %struct.e1000_hw* %245 to %struct.e1000_hw.1*
  %247 = call i64 %244(%struct.e1000_hw.1* %246, i64* %13, i64* %14)
  store i64 %247, i64* %5, align 8
  %248 = load i64, i64* %5, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %239
  %251 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %407

252:                                              ; preds = %239
  %253 = load i64, i64* %14, align 8
  %254 = load i64, i64* @HALF_DUPLEX, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = load i64, i64* @e1000_fc_none, align 8
  %258 = inttoptr i64 %257 to i8*
  %259 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %260 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  store i8* %258, i8** %261, align 8
  br label %262

262:                                              ; preds = %256, %252
  %263 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %264 = call i64 @igb_force_mac_fc(%struct.e1000_hw* %263)
  store i64 %264, i64* %5, align 8
  %265 = load i64, i64* %5, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %407

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %55, %48
  %271 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %272 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %406

277:                                              ; preds = %270
  %278 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %279 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %406

282:                                              ; preds = %277
  %283 = load i32, i32* @E1000_PCS_LSTAT, align 4
  %284 = call i32 @rd32(i32 %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @E1000_PCS_LSTS_AN_COMPLETE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %282
  %290 = call i32 @hw_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %291 = load i64, i64* %5, align 8
  store i64 %291, i64* %2, align 8
  br label %409

292:                                              ; preds = %282
  %293 = load i32, i32* @E1000_PCS_ANADV, align 4
  %294 = call i32 @rd32(i32 %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* @E1000_PCS_LPAB, align 4
  %296 = call i32 @rd32(i32 %295)
  store i32 %296, i32* %8, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %327

301:                                              ; preds = %292
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %327

306:                                              ; preds = %301
  %307 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %308 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @e1000_fc_full, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %320

313:                                              ; preds = %306
  %314 = load i64, i64* @e1000_fc_full, align 8
  %315 = inttoptr i64 %314 to i8*
  %316 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %317 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 1
  store i8* %315, i8** %318, align 8
  %319 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %326

320:                                              ; preds = %306
  %321 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %322 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %323 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  store i8* %321, i8** %324, align 8
  %325 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %326

326:                                              ; preds = %320, %313
  br label %389

327:                                              ; preds = %301, %292
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %354, label %332

332:                                              ; preds = %327
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %332
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %337
  %343 = load i32, i32* %8, align 4
  %344 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %342
  %348 = load i64, i64* @e1000_fc_tx_pause, align 8
  %349 = inttoptr i64 %348 to i8*
  %350 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %351 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 1
  store i8* %349, i8** %352, align 8
  %353 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %388

354:                                              ; preds = %342, %337, %332, %327
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %380

359:                                              ; preds = %354
  %360 = load i32, i32* %7, align 4
  %361 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %380

364:                                              ; preds = %359
  %365 = load i32, i32* %8, align 4
  %366 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %380, label %369

369:                                              ; preds = %364
  %370 = load i32, i32* %8, align 4
  %371 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %369
  %375 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %376 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %377 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 1
  store i8* %375, i8** %378, align 8
  %379 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %387

380:                                              ; preds = %369, %364, %359, %354
  %381 = load i64, i64* @e1000_fc_none, align 8
  %382 = inttoptr i64 %381 to i8*
  %383 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %384 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 1
  store i8* %382, i8** %385, align 8
  %386 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %387

387:                                              ; preds = %380, %374
  br label %388

388:                                              ; preds = %387, %347
  br label %389

389:                                              ; preds = %388, %326
  %390 = load i32, i32* @E1000_PCS_LCTL, align 4
  %391 = call i32 @rd32(i32 %390)
  store i32 %391, i32* %9, align 4
  %392 = load i32, i32* @E1000_PCS_LCTL_FORCE_FCTRL, align 4
  %393 = load i32, i32* %9, align 4
  %394 = or i32 %393, %392
  store i32 %394, i32* %9, align 4
  %395 = load i32, i32* @E1000_PCS_LCTL, align 4
  %396 = load i32, i32* %9, align 4
  %397 = call i32 @wr32(i32 %395, i32 %396)
  %398 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %399 = call i64 @igb_force_mac_fc(%struct.e1000_hw* %398)
  store i64 %399, i64* %5, align 8
  %400 = load i64, i64* %5, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %389
  %403 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %404 = load i64, i64* %5, align 8
  store i64 %404, i64* %2, align 8
  br label %409

405:                                              ; preds = %389
  br label %406

406:                                              ; preds = %405, %277, %270
  br label %407

407:                                              ; preds = %406, %267, %250, %118, %105, %91, %85, %72, %46
  %408 = load i64, i64* %5, align 8
  store i64 %408, i64* %2, align 8
  br label %409

409:                                              ; preds = %407, %402, %289
  %410 = load i64, i64* %2, align 8
  ret i64 %410
}

declare dso_local i64 @igb_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
