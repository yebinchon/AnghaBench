; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_check_for_copper_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_check_for_copper_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_13__, %struct.e1000_mac_info, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_mac_info = type { i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.2 = type opaque
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i32 0, align 4
@I82579_RX_CONFIG = common dso_local global i32 0, align 4
@E1000_DEV_ID_PCH_LPTLP_I218_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM3 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V3 = common dso_local global i64 0, align 8
@e1000_pch_lpt = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_check_for_copper_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_for_copper_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %259

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %17, i32 1, i32 0, i32* %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %259

23:                                               ; preds = %16
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %30, i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %259

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 129
  br i1 %43, label %44, label %98

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %44
  %48 = load i32, i32* @STATUS, align 4
  %49 = call i32 @er32(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @E1000_STATUS_FD, align 4
  %52 = load i32, i32* @E1000_STATUS_SPEED_MASK, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %97, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @TIPG, align 4
  %58 = call i32 @er32(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @E1000_TIPG_IPGT_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 255
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @TIPG, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ew32(i32 %65, i32 %66)
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.1*
  %75 = call i64 %72(%struct.e1000_hw.1* %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %56
  %79 = load i64, i64* %5, align 8
  store i64 %79, i64* %2, align 8
  br label %259

80:                                               ; preds = %56
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = load i32, i32* @I82579_RX_CONFIG, align 4
  %83 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %81, i32 %82, i32 0)
  store i64 %83, i64* %5, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %87, align 8
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = bitcast %struct.e1000_hw* %89 to %struct.e1000_hw.0*
  %91 = call i32 %88(%struct.e1000_hw.0* %90)
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i64, i64* %5, align 8
  store i64 %95, i64* %2, align 8
  br label %259

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96, %47
  br label %98

98:                                               ; preds = %97, %44, %38
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_LM, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %138, label %108

108:                                              ; preds = %98
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 3
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_V, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %138, label %118

118:                                              ; preds = %108
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 3
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM3, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %118
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 3
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @E1000_DEV_ID_PCH_I218_V3, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %128, %118, %108, %98
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i64 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw* %139, i32 %140)
  store i64 %141, i64* %5, align 8
  %142 = load i64, i64* %5, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i64, i64* %5, align 8
  store i64 %145, i64* %2, align 8
  br label %259

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %128
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @e1000_pch_lpt, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i64 @e1000_platform_pm_pch_lpt(%struct.e1000_hw* %155, i32 %156)
  store i64 %157, i64* %5, align 8
  %158 = load i64, i64* %5, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i64, i64* %5, align 8
  store i64 %161, i64* %2, align 8
  br label %259

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %147
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  store i64 0, i64* %2, align 8
  br label %259

171:                                              ; preds = %163
  %172 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %173 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %175 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %225 [
    i32 129, label %178
    i32 128, label %186
  ]

178:                                              ; preds = %171
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %180 = call i64 @e1000_k1_workaround_lv(%struct.e1000_hw* %179)
  store i64 %180, i64* %5, align 8
  %181 = load i64, i64* %5, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i64, i64* %5, align 8
  store i64 %184, i64* %2, align 8
  br label %259

185:                                              ; preds = %178
  br label %186

186:                                              ; preds = %171, %185
  %187 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %188 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @e1000_phy_82578, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %195 = call i64 @e1000_link_stall_workaround_hv(%struct.e1000_hw* %194)
  store i64 %195, i64* %5, align 8
  %196 = load i64, i64* %5, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i64, i64* %5, align 8
  store i64 %199, i64* %2, align 8
  br label %259

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %200, %186
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %203 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %204 = call i32 @e1e_rphy(%struct.e1000_hw* %202, i32 %203, i32* %7)
  %205 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK, align 4
  %206 = xor i32 %205, -1
  %207 = load i32, i32* %7, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* @STATUS, align 4
  %210 = call i32 @er32(i32 %209)
  %211 = load i32, i32* @E1000_STATUS_FD, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @E1000_STATUS_FD, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %201
  %216 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT, align 4
  %217 = shl i32 1, %216
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %215, %201
  %221 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %222 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @e1e_wphy(%struct.e1000_hw* %221, i32 %222, i32 %223)
  br label %226

225:                                              ; preds = %171
  br label %226

226:                                              ; preds = %225, %220
  %227 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %228 = call i32 @e1000e_check_downshift(%struct.e1000_hw* %227)
  %229 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %230 = call i64 @e1000_set_eee_pchlan(%struct.e1000_hw* %229)
  store i64 %230, i64* %5, align 8
  %231 = load i64, i64* %5, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i64, i64* %5, align 8
  store i64 %234, i64* %2, align 8
  br label %259

235:                                              ; preds = %226
  %236 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %237 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %242 = sub nsw i64 0, %241
  store i64 %242, i64* %2, align 8
  br label %259

243:                                              ; preds = %235
  %244 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %245 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %246, align 8
  %248 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %249 = bitcast %struct.e1000_hw* %248 to %struct.e1000_hw.2*
  %250 = call i32 %247(%struct.e1000_hw.2* %249)
  %251 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %252 = call i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %251)
  store i64 %252, i64* %5, align 8
  %253 = load i64, i64* %5, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %243
  %256 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %243
  %258 = load i64, i64* %5, align 8
  store i64 %258, i64* %2, align 8
  br label %259

259:                                              ; preds = %257, %240, %233, %198, %183, %170, %160, %144, %94, %78, %35, %21, %15
  %260 = load i64, i64* %2, align 8
  ret i64 %260
}

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw*, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_platform_pm_pch_lpt(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_k1_workaround_lv(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_link_stall_workaround_hv(%struct.e1000_hw*) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000e_check_downshift(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_set_eee_pchlan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
