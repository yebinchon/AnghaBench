; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mii.c_mii_ethtool_sset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mii.c_mii_ethtool_sset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 (%struct.net_device*, i32, i32)*, i32, i32, i32, i32, i32 (%struct.net_device*, i32, i32, i32)*, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64, i64, i32, i32 }

@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@XCVR_INTERNAL = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_ethtool_sset(%struct.mii_if_info* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_if_info*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %14 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %15 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %14, i32 0, i32 7
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPEED_10, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPEED_100, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SPEED_1000, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %329

37:                                               ; preds = %28, %22, %2
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DUPLEX_HALF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DUPLEX_FULL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %329

52:                                               ; preds = %43, %37
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_MII, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %329

61:                                               ; preds = %52
  %62 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XCVR_INTERNAL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %329

70:                                               ; preds = %61
  %71 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %75 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %329

81:                                               ; preds = %70
  %82 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AUTONEG_DISABLE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AUTONEG_ENABLE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %329

96:                                               ; preds = %87, %81
  %97 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SPEED_1000, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %104 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %329

110:                                              ; preds = %102, %96
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AUTONEG_ENABLE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %255

116:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %117 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %118 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %121 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %119, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %116
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %329

136:                                              ; preds = %116
  %137 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %138 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %137, i32 0, i32 0
  %139 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %138, align 8
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %142 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MII_ADVERTISE, align 4
  %145 = call i32 %139(%struct.net_device* %140, i32 %143, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ADVERTISE_ALL, align 4
  %148 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = and i32 %146, %150
  store i32 %151, i32* %9, align 4
  %152 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %153 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %136
  %157 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %158 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %157, i32 0, i32 0
  %159 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %158, align 8
  %160 = load %struct.net_device*, %struct.net_device** %6, align 8
  %161 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %162 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MII_CTRL1000, align 4
  %165 = call i32 %159(%struct.net_device* %160, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %168 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = and i32 %166, %170
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %156, %136
  %173 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %174 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ethtool_adv_to_mii_adv_t(i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  %179 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %180 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %172
  %184 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %185 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ethtool_adv_to_mii_ctrl1000_t(i32 %186)
  %188 = load i32, i32* %11, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %183, %172
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %196 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %195, i32 0, i32 5
  %197 = load i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32)** %196, align 8
  %198 = load %struct.net_device*, %struct.net_device** %6, align 8
  %199 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %200 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @MII_ADVERTISE, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 %197(%struct.net_device* %198, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %207 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %194, %190
  %209 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %210 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %208
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %213
  %218 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %219 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %218, i32 0, i32 5
  %220 = load i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32)** %219, align 8
  %221 = load %struct.net_device*, %struct.net_device** %6, align 8
  %222 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %223 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @MII_CTRL1000, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 %220(%struct.net_device* %221, i32 %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %217, %213, %208
  %229 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %230 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %229, i32 0, i32 0
  %231 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %230, align 8
  %232 = load %struct.net_device*, %struct.net_device** %6, align 8
  %233 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %234 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @MII_BMCR, align 4
  %237 = call i32 %231(%struct.net_device* %232, i32 %235, i32 %236)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* @BMCR_ANENABLE, align 4
  %239 = load i32, i32* @BMCR_ANRESTART, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* %7, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %244 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %243, i32 0, i32 5
  %245 = load i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32)** %244, align 8
  %246 = load %struct.net_device*, %struct.net_device** %6, align 8
  %247 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %248 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @MII_BMCR, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 %245(%struct.net_device* %246, i32 %249, i32 %250, i32 %251)
  %253 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %254 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %253, i32 0, i32 2
  store i32 0, i32* %254, align 4
  br label %328

255:                                              ; preds = %110
  %256 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %257 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %256, i32 0, i32 0
  %258 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %257, align 8
  %259 = load %struct.net_device*, %struct.net_device** %6, align 8
  %260 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %261 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @MII_BMCR, align 4
  %264 = call i32 %258(%struct.net_device* %259, i32 %262, i32 %263)
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @BMCR_ANENABLE, align 4
  %267 = load i32, i32* @BMCR_SPEED100, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @BMCR_SPEED1000, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @BMCR_FULLDPLX, align 4
  %272 = or i32 %270, %271
  %273 = xor i32 %272, -1
  %274 = and i32 %265, %273
  store i32 %274, i32* %13, align 4
  %275 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %276 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @SPEED_1000, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %255
  %281 = load i32, i32* @BMCR_SPEED1000, align 4
  %282 = load i32, i32* %13, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %13, align 4
  br label %295

284:                                              ; preds = %255
  %285 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %286 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @SPEED_100, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load i32, i32* @BMCR_SPEED100, align 4
  %292 = load i32, i32* %13, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %13, align 4
  br label %294

294:                                              ; preds = %290, %284
  br label %295

295:                                              ; preds = %294, %280
  %296 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %297 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @DUPLEX_FULL, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %295
  %302 = load i32, i32* @BMCR_FULLDPLX, align 4
  %303 = load i32, i32* %13, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %13, align 4
  %305 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %306 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %305, i32 0, i32 3
  store i32 1, i32* %306, align 8
  br label %310

307:                                              ; preds = %295
  %308 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %309 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %308, i32 0, i32 3
  store i32 0, i32* %309, align 8
  br label %310

310:                                              ; preds = %307, %301
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* %13, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %325

314:                                              ; preds = %310
  %315 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %316 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %315, i32 0, i32 5
  %317 = load i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32)** %316, align 8
  %318 = load %struct.net_device*, %struct.net_device** %6, align 8
  %319 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %320 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @MII_BMCR, align 4
  %323 = load i32, i32* %13, align 4
  %324 = call i32 %317(%struct.net_device* %318, i32 %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %314, %310
  %326 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %327 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %326, i32 0, i32 2
  store i32 1, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %228
  store i32 0, i32* %3, align 4
  br label %329

329:                                              ; preds = %328, %133, %107, %93, %78, %67, %58, %49, %34
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local i32 @ethtool_adv_to_mii_adv_t(i32) #1

declare dso_local i32 @ethtool_adv_to_mii_ctrl1000_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
