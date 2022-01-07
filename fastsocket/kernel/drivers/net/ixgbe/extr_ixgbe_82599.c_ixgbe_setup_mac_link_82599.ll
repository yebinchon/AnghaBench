; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i64 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_LINK_NO_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_10G_SERIAL = common dso_local global i32 0, align 4
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_AUTO_NEG_TIME = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i32 0, align 4
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Autoneg did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = load i32, i32* @IXGBE_AUTOC2, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.0*
  %34 = call i64 %31(%struct.ixgbe_hw.0* %33, i32* %17, i32* %19)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %288

38:                                               ; preds = %3
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %46, i64* %7, align 8
  br label %288

47:                                               ; preds = %38
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = load i32, i32* @IXGBE_AUTOC, align 4
  %61 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %13, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %81, %77, %62
  %86 = load i32, i32* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 4
  %87 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %85
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %112 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %116, %110, %105
  br label %121

121:                                              ; preds = %120, %85
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %121
  br label %195

131:                                              ; preds = %81
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @IXGBE_AUTOC_1G_SFI, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @IXGBE_AUTOC_LMS_1G_LINK_NO_AN, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %151, %147, %143
  br label %194

160:                                              ; preds = %139, %131
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %164
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %192

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @IXGBE_AUTOC_1G_SFI, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %172
  %177 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %185 = load i32, i32* %8, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %8, align 4
  br label %191

187:                                              ; preds = %176
  %188 = load i32, i32* @IXGBE_AUTOC_LMS_1G_LINK_NO_AN, align 4
  %189 = load i32, i32* %8, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %187, %183
  br label %192

192:                                              ; preds = %191, %172, %168
  br label %193

193:                                              ; preds = %192, %164, %160
  br label %194

194:                                              ; preds = %193, %159
  br label %195

195:                                              ; preds = %194, %130
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %287

199:                                              ; preds = %195
  %200 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %201 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %199
  %204 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %205 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %207, align 8
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %210 = bitcast %struct.ixgbe_hw* %209 to %struct.ixgbe_hw.1*
  %211 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %212 = call i64 %208(%struct.ixgbe_hw.1* %210, i32 %211)
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %288

216:                                              ; preds = %203
  store i32 1, i32* %18, align 4
  br label %217

217:                                              ; preds = %216, %199
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %219 = load i32, i32* @IXGBE_AUTOC, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %218, i32 %219, i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %224 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  store i32 %222, i32* %225, align 4
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %227 = call i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %226)
  %228 = load i32, i32* %18, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %217
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %232 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %234, align 8
  %236 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %237 = bitcast %struct.ixgbe_hw* %236 to %struct.ixgbe_hw.2*
  %238 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %239 = call i32 %235(%struct.ixgbe_hw.2* %237, i32 %238)
  br label %240

240:                                              ; preds = %230, %217
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %285

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %255, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %284

255:                                              ; preds = %251, %247, %243
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %256

256:                                              ; preds = %271, %255
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* @IXGBE_AUTO_NEG_TIME, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %274

260:                                              ; preds = %256
  %261 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %262 = load i32, i32* @IXGBE_LINKS, align 4
  %263 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %261, i32 %262)
  store i32 %263, i32* %15, align 4
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  br label %274

269:                                              ; preds = %260
  %270 = call i32 @msleep(i32 100)
  br label %271

271:                                              ; preds = %269
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %16, align 4
  br label %256

274:                                              ; preds = %268, %256
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %274
  %280 = load i64, i64* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 8
  store i64 %280, i64* %7, align 8
  %281 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %282 = call i32 @hw_dbg(%struct.ixgbe_hw* %281, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %283

283:                                              ; preds = %279, %274
  br label %284

284:                                              ; preds = %283, %251
  br label %285

285:                                              ; preds = %284, %240
  %286 = call i32 @msleep(i32 50)
  br label %287

287:                                              ; preds = %285, %195
  br label %288

288:                                              ; preds = %287, %215, %45, %37
  %289 = load i64, i64* %7, align 8
  ret i64 %289
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
