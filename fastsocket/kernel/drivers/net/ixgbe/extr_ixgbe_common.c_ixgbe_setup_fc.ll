; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_setup_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_setup_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.2*, i32)*, i64 (%struct.ixgbe_hw.3*, i32)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8
@ixgbe_fc_default = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_TAF_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_TAF_ASM_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_PCS1GLCTL = common dso_local global i32 0, align 4
@IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Set up FC; PCS1GLCTL = 0x%08X\0A\00", align 1
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Set up FC; IXGBE_AUTOC = 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_setup_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_fc(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 133
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %22, i64* %3, align 8
  br label %288

23:                                               ; preds = %13, %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ixgbe_fc_default, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 135, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %57 [
    i32 128, label %39
    i32 129, label %39
    i32 131, label %39
    i32 130, label %46
  ]

39:                                               ; preds = %34, %34, %34
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = load i32, i32* @IXGBE_AUTOC, align 4
  %45 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %58

46:                                               ; preds = %34
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %50, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = bitcast %struct.ixgbe_hw* %52 to %struct.ixgbe_hw.1*
  %54 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %55 = load i32, i32* @MDIO_MMD_AN, align 4
  %56 = call i32 %51(%struct.ixgbe_hw.1* %53, i32 %54, i32 %55, i32* %6)
  br label %58

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %46, %39
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %165 [
    i32 134, label %63
    i32 132, label %97
    i32 133, label %134
    i32 135, label %134
  ]

63:                                               ; preds = %58
  %64 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %65 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 131
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %77 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %96

82:                                               ; preds = %63
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 130
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %90 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %88, %82
  br label %96

96:                                               ; preds = %95, %75
  br label %169

97:                                               ; preds = %58
  %98 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 131
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %133

118:                                              ; preds = %97
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 130
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %124, %118
  br label %133

133:                                              ; preds = %132, %110
  br label %169

134:                                              ; preds = %58, %58
  %135 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %136 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 131
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %147 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %164

151:                                              ; preds = %134
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 130
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %159 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %157, %151
  br label %164

164:                                              ; preds = %163, %145
  br label %169

165:                                              ; preds = %58
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %167 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %166, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %168, i64* %3, align 8
  br label %288

169:                                              ; preds = %164, %133, %96
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %171 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ixgbe_mac_X540, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %169
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %178 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %177, i32 %178, i32 %179)
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %182 = load i32, i32* @IXGBE_PCS1GLCTL, align 4
  %183 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %181, i32 %182)
  store i32 %183, i32* %4, align 4
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %185 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %176
  %190 = load i32, i32* @IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %4, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %189, %176
  %195 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %196 = load i32, i32* @IXGBE_PCS1GLCTL, align 4
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %195, i32 %196, i32 %197)
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %194, %169
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %204 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 131
  br i1 %207, label %208, label %261

208:                                              ; preds = %202
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %208
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %217 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %221 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i64 (%struct.ixgbe_hw.3*, i32)*, i64 (%struct.ixgbe_hw.3*, i32)** %223, align 8
  %225 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %226 = bitcast %struct.ixgbe_hw* %225 to %struct.ixgbe_hw.3*
  %227 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %228 = call i64 %224(%struct.ixgbe_hw.3* %226, i32 %227)
  store i64 %228, i64* %3, align 8
  %229 = load i64, i64* %3, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %219
  br label %288

232:                                              ; preds = %219
  store i32 1, i32* %7, align 4
  br label %233

233:                                              ; preds = %232, %215, %208
  %234 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %235 = load i32, i32* @IXGBE_AUTOC, align 4
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %234, i32 %235, i32 %236)
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %239 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %233
  %245 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %246 = call i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %245)
  br label %247

247:                                              ; preds = %244, %233
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %247
  %251 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %252 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %254, align 8
  %256 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %257 = bitcast %struct.ixgbe_hw* %256 to %struct.ixgbe_hw.2*
  %258 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %259 = call i32 %255(%struct.ixgbe_hw.2* %257, i32 %258)
  br label %260

260:                                              ; preds = %250, %247
  br label %284

261:                                              ; preds = %202
  %262 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %263 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 130
  br i1 %266, label %267, label %283

267:                                              ; preds = %261
  %268 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %269 = call i64 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %267
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %273 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %275, align 8
  %277 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %278 = bitcast %struct.ixgbe_hw* %277 to %struct.ixgbe_hw.0*
  %279 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %280 = load i32, i32* @MDIO_MMD_AN, align 4
  %281 = load i32, i32* %6, align 4
  %282 = call i32 %276(%struct.ixgbe_hw.0* %278, i32 %279, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %271, %267, %261
  br label %284

284:                                              ; preds = %283, %260
  %285 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %286 = load i32, i32* %4, align 4
  %287 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %285, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %284, %231, %165, %19
  %289 = load i64, i64* %3, align 8
  ret i64 %289
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
