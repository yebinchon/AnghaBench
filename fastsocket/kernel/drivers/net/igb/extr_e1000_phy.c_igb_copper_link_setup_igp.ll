; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_copper_link_setup_igp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_copper_link_setup_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_phy_info = type { i64, i32, i64, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.3*, i32)*, i64 (%struct.e1000_hw.4*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_hw.4 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D3\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D0\0A\00", align 1
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4
@CR_1000T_MS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_copper_link_setup_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %3, align 8
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %249

13:                                               ; preds = %1
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i64 (%struct.e1000_hw.4*)*, i64 (%struct.e1000_hw.4*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.4*
  %20 = call i64 %17(%struct.e1000_hw.4* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @hw_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %249

25:                                               ; preds = %13
  %26 = call i32 @msleep(i32 100)
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @e1000_phy_igp, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i64 (%struct.e1000_hw.3*, i32)*, i64 (%struct.e1000_hw.3*, i32)** %35, align 8
  %37 = icmp ne i64 (%struct.e1000_hw.3*, i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64 (%struct.e1000_hw.3*, i32)*, i64 (%struct.e1000_hw.3*, i32)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.3*
  %45 = call i64 %42(%struct.e1000_hw.3* %44, i32 0)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @hw_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %249

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.2*, i32)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.2*
  %59 = call i64 %56(%struct.e1000_hw.2* %58, i32 0)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 @hw_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %249

64:                                               ; preds = %52
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %72 = call i64 %68(%struct.e1000_hw.1* %70, i32 %71, i32* %5)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %249

76:                                               ; preds = %64
  %77 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %94 [
    i32 1, label %84
    i32 2, label %89
    i32 0, label %93
  ]

84:                                               ; preds = %76
  %85 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %98

89:                                               ; preds = %76
  %90 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %98

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %76, %93
  %95 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %89, %84
  %99 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i64 %102(%struct.e1000_hw.0* %104, i32 %105, i32 %106)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %249

111:                                              ; preds = %98
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %248

117:                                              ; preds = %111
  %118 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ADVERTISE_1000_FULL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %182

123:                                              ; preds = %117
  %124 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %126, align 8
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %129 = bitcast %struct.e1000_hw* %128 to %struct.e1000_hw.1*
  %130 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %131 = call i64 %127(%struct.e1000_hw.1* %129, i32 %130, i32* %5)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %249

135:                                              ; preds = %123
  %136 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %141 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %142, align 8
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %145 = bitcast %struct.e1000_hw* %144 to %struct.e1000_hw.0*
  %146 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i64 %143(%struct.e1000_hw.0* %145, i32 %146, i32 %147)
  store i64 %148, i64* %4, align 8
  %149 = load i64, i64* %4, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %135
  br label %249

152:                                              ; preds = %135
  %153 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %154 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %155, align 8
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %158 = bitcast %struct.e1000_hw* %157 to %struct.e1000_hw.1*
  %159 = load i32, i32* @PHY_1000T_CTRL, align 4
  %160 = call i64 %156(%struct.e1000_hw.1* %158, i32 %159, i32* %5)
  store i64 %160, i64* %4, align 8
  %161 = load i64, i64* %4, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %249

164:                                              ; preds = %152
  %165 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %170 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %171, align 8
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %174 = bitcast %struct.e1000_hw* %173 to %struct.e1000_hw.0*
  %175 = load i32, i32* @PHY_1000T_CTRL, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i64 %172(%struct.e1000_hw.0* %174, i32 %175, i32 %176)
  store i64 %177, i64* %4, align 8
  %178 = load i64, i64* %4, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %164
  br label %249

181:                                              ; preds = %164
  br label %182

182:                                              ; preds = %181, %117
  %183 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %184 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %185, align 8
  %187 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %188 = bitcast %struct.e1000_hw* %187 to %struct.e1000_hw.1*
  %189 = load i32, i32* @PHY_1000T_CTRL, align 4
  %190 = call i64 %186(%struct.e1000_hw.1* %188, i32 %189, i32* %5)
  store i64 %190, i64* %4, align 8
  %191 = load i64, i64* %4, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  br label %249

194:                                              ; preds = %182
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 129, i32 128
  br label %207

206:                                              ; preds = %194
  br label %207

207:                                              ; preds = %206, %199
  %208 = phi i32 [ %205, %199 ], [ 130, %206 ]
  %209 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %210 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 8
  %211 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %212 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  switch i32 %213, label %233 [
    i32 129, label %214
    i32 128, label %220
    i32 130, label %228
  ]

214:                                              ; preds = %207
  %215 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %216 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  br label %234

220:                                              ; preds = %207
  %221 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %222 = load i32, i32* %5, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %5, align 4
  br label %234

228:                                              ; preds = %207
  %229 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %5, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %207, %228
  br label %234

234:                                              ; preds = %233, %220, %214
  %235 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %236 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %237, align 8
  %239 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %240 = bitcast %struct.e1000_hw* %239 to %struct.e1000_hw.0*
  %241 = load i32, i32* @PHY_1000T_CTRL, align 4
  %242 = load i32, i32* %5, align 4
  %243 = call i64 %238(%struct.e1000_hw.0* %240, i32 %241, i32 %242)
  store i64 %243, i64* %4, align 8
  %244 = load i64, i64* %4, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %234
  br label %249

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247, %111
  br label %249

249:                                              ; preds = %248, %246, %193, %180, %163, %151, %134, %110, %75, %62, %49, %23, %12
  %250 = load i64, i64* %4, align 8
  ret i64 %250
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
