; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_admin_mib_updated_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_admin_mib_updated_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, %struct.bnx2x_config_dcbx_params }
%struct.bnx2x_config_dcbx_params = type { i64, i32, i64, %struct.bnx2x_admin_priority_app_table*, i64, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnx2x_admin_priority_app_table = type { i64, i64, i32, i64 }
%struct.lldp_admin_mib = type { i32, %struct.dcbx_features }
%struct.dcbx_features = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i8* }

@PREDEFINED_APP_IDX_MAX = common dso_local global i64 0, align 8
@BNX2X_DCBX_ENABLED_ON_NEG_ON = common dso_local global i64 0, align 8
@DCBX_DCBX_ENABLED = common dso_local global i32 0, align 4
@BNX2X_DCBX_OVERWRITE_SETTINGS_ENABLE = common dso_local global i64 0, align 8
@DCBX_CEE_VERSION_MASK = common dso_local global i32 0, align 4
@DCBX_CEE_VERSION_SHIFT = common dso_local global i32 0, align 4
@DCBX_ETS_CONFIG_TX_ENABLED = common dso_local global i32 0, align 4
@DCBX_PFC_CONFIG_TX_ENABLED = common dso_local global i32 0, align 4
@DCBX_APP_CONFIG_TX_ENABLED = common dso_local global i32 0, align 4
@DCBX_ETS_WILLING = common dso_local global i32 0, align 4
@DCBX_PFC_WILLING = common dso_local global i32 0, align 4
@DCBX_APP_WILLING = common dso_local global i32 0, align 4
@DCBX_MAX_NUM_PG_BW_ENTRIES = common dso_local global i64 0, align 8
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pg_bw_tbl[%d] = %02x\0A\00", align 1
@DCBX_MAX_NUM_PRI_PG_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"pri_pg_tbl[%d] = %02x\0A\00", align 1
@DCBX_CONFIG_MAX_APP_PROTOCOL = common dso_local global i64 0, align 8
@ETH_TYPE_FCOE = common dso_local global i64 0, align 8
@TRAFFIC_TYPE_ETH = common dso_local global i64 0, align 8
@FCOE_APP_IDX = common dso_local global i64 0, align 8
@TCP_PORT_ISCSI = common dso_local global i64 0, align 8
@TRAFFIC_TYPE_PORT = common dso_local global i64 0, align 8
@ISCSI_APP_IDX = common dso_local global i64 0, align 8
@DCBX_APP_ENTRY_VALID = common dso_local global i32 0, align 4
@DCBX_APP_SF_ETH_TYPE = common dso_local global i32 0, align 4
@DCBX_APP_SF_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64)* @bnx2x_dcbx_admin_mib_updated_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_admin_mib_updated_params(%struct.bnx2x* %0, i64 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lldp_admin_mib, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dcbx_features*, align 8
  %11 = alloca %struct.bnx2x_config_dcbx_params*, align 8
  %12 = alloca %struct.bnx2x_admin_priority_app_table*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* @PREDEFINED_APP_IDX_MAX, align 8
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = call i64 @LLDP_ADMIN_MIB_OFFSET(%struct.bnx2x* %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %9, align 8
  %18 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 1
  store %struct.dcbx_features* %18, %struct.dcbx_features** %10, align 8
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 1
  store %struct.bnx2x_config_dcbx_params* %20, %struct.bnx2x_config_dcbx_params** %11, align 8
  %21 = call i32 @memset(%struct.lldp_admin_mib* %5, i32 0, i32 56)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = bitcast %struct.lldp_admin_mib* %5 to i64*
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @bnx2x_read_data(%struct.bnx2x* %22, i64* %23, i64 %24, i32 56)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BNX2X_DCBX_ENABLED_ON_NEG_ON, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DCBX_DCBX_ENABLED, align 4
  %35 = call i32 @SET_FLAGS(i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DCBX_DCBX_ENABLED, align 4
  %40 = call i32 @RESET_FLAGS(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %43 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BNX2X_DCBX_OVERWRITE_SETTINGS_ENABLE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %361

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DCBX_CEE_VERSION_MASK, align 4
  %51 = call i32 @RESET_FLAGS(i32 %49, i32 %50)
  %52 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %53 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DCBX_CEE_VERSION_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @DCBX_CEE_VERSION_MASK, align 4
  %58 = and i32 %56, %57
  %59 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  %62 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %63 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %62, i32 0, i32 14
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %67 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %70 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %69, i32 0, i32 13
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %74 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %77 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %76, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %47
  %81 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DCBX_ETS_CONFIG_TX_ENABLED, align 4
  %84 = call i32 @SET_FLAGS(i32 %82, i32 %83)
  br label %90

85:                                               ; preds = %47
  %86 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DCBX_ETS_CONFIG_TX_ENABLED, align 4
  %89 = call i32 @RESET_FLAGS(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %92 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DCBX_PFC_CONFIG_TX_ENABLED, align 4
  %99 = call i32 @SET_FLAGS(i32 %97, i32 %98)
  br label %105

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DCBX_PFC_CONFIG_TX_ENABLED, align 4
  %104 = call i32 @RESET_FLAGS(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %107 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DCBX_APP_CONFIG_TX_ENABLED, align 4
  %114 = call i32 @SET_FLAGS(i32 %112, i32 %113)
  br label %120

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DCBX_APP_CONFIG_TX_ENABLED, align 4
  %119 = call i32 @RESET_FLAGS(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %122 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DCBX_ETS_WILLING, align 4
  %129 = call i32 @SET_FLAGS(i32 %127, i32 %128)
  br label %135

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @DCBX_ETS_WILLING, align 4
  %134 = call i32 @RESET_FLAGS(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %137 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DCBX_PFC_WILLING, align 4
  %144 = call i32 @SET_FLAGS(i32 %142, i32 %143)
  br label %150

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DCBX_PFC_WILLING, align 4
  %149 = call i32 @RESET_FLAGS(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %152 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DCBX_APP_WILLING, align 4
  %159 = call i32 @SET_FLAGS(i32 %157, i32 %158)
  br label %165

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.lldp_admin_mib, %struct.lldp_admin_mib* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DCBX_APP_WILLING, align 4
  %164 = call i32 @RESET_FLAGS(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %155
  store i64 0, i64* %6, align 8
  br label %166

166:                                              ; preds = %193, %165
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @DCBX_MAX_NUM_PG_BW_ENTRIES, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %196

170:                                              ; preds = %166
  %171 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %172 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %6, align 8
  %176 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %177 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %176, i32 0, i32 6
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = call i32 @DCBX_PG_BW_SET(i32 %174, i64 %175, i8* %182)
  %184 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %185 = load i64, i64* %6, align 8
  %186 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %187 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i64, i64* %6, align 8
  %191 = call i32 @DCBX_PG_BW_GET(i32 %189, i64 %190)
  %192 = call i32 @DP(i32 %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %185, i32 %191)
  br label %193

193:                                              ; preds = %170
  %194 = load i64, i64* %6, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %6, align 8
  br label %166

196:                                              ; preds = %166
  store i64 0, i64* %6, align 8
  br label %197

197:                                              ; preds = %224, %196
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* @DCBX_MAX_NUM_PRI_PG_ENTRIES, align 8
  %200 = icmp ult i64 %198, %199
  br i1 %200, label %201, label %227

201:                                              ; preds = %197
  %202 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %203 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i64, i64* %6, align 8
  %207 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %208 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %207, i32 0, i32 5
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @DCBX_PRI_PG_SET(i32 %205, i64 %206, i8* %213)
  %215 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %216 = load i64, i64* %6, align 8
  %217 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %218 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* %6, align 8
  %222 = call i32 @DCBX_PRI_PG_GET(i32 %220, i64 %221)
  %223 = call i32 @DP(i32 %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %216, i32 %222)
  br label %224

224:                                              ; preds = %201
  %225 = load i64, i64* %6, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %6, align 8
  br label %197

227:                                              ; preds = %197
  %228 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %229 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = inttoptr i64 %230 to i8*
  %232 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %233 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i8* %231, i8** %234, align 8
  store i64 0, i64* %6, align 8
  br label %235

235:                                              ; preds = %350, %227
  %236 = load i64, i64* %6, align 8
  %237 = load i64, i64* @DCBX_CONFIG_MAX_APP_PROTOCOL, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %353

239:                                              ; preds = %235
  %240 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %241 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %240, i32 0, i32 3
  %242 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %241, align 8
  %243 = load i64, i64* %6, align 8
  %244 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %242, i64 %243
  %245 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %349

248:                                              ; preds = %239
  %249 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %250 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %249, i32 0, i32 3
  %251 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %250, align 8
  store %struct.bnx2x_admin_priority_app_table* %251, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %252 = load i64, i64* @ETH_TYPE_FCOE, align 8
  %253 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %254 = load i64, i64* %6, align 8
  %255 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %253, i64 %254
  %256 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %252, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %248
  %260 = load i64, i64* @TRAFFIC_TYPE_ETH, align 8
  %261 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %262 = load i64, i64* %6, align 8
  %263 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %261, i64 %262
  %264 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %260, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = load i64, i64* @FCOE_APP_IDX, align 8
  store i64 %268, i64* %8, align 8
  br label %291

269:                                              ; preds = %259, %248
  %270 = load i64, i64* @TCP_PORT_ISCSI, align 8
  %271 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %272 = load i64, i64* %6, align 8
  %273 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %271, i64 %272
  %274 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %270, %275
  br i1 %276, label %277, label %287

277:                                              ; preds = %269
  %278 = load i64, i64* @TRAFFIC_TYPE_PORT, align 8
  %279 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %280 = load i64, i64* %6, align 8
  %281 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %279, i64 %280
  %282 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %278, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load i64, i64* @ISCSI_APP_IDX, align 8
  store i64 %286, i64* %8, align 8
  br label %290

287:                                              ; preds = %277, %269
  %288 = load i64, i64* %7, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %7, align 8
  store i64 %288, i64* %8, align 8
  br label %290

290:                                              ; preds = %287, %285
  br label %291

291:                                              ; preds = %290, %267
  %292 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %293 = load i64, i64* %6, align 8
  %294 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %292, i64 %293
  %295 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %298 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %299, align 8
  %301 = load i64, i64* %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  store i64 %296, i64* %303, align 8
  %304 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %305 = load i64, i64* %6, align 8
  %306 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %304, i64 %305
  %307 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = shl i32 1, %308
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %313 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = load i64, i64* %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 2
  store i8* %311, i8** %318, align 8
  %319 = load i32, i32* @DCBX_APP_ENTRY_VALID, align 4
  %320 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %321 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = load i64, i64* %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 1
  store i32 %319, i32* %326, align 8
  %327 = load i64, i64* @TRAFFIC_TYPE_ETH, align 8
  %328 = load %struct.bnx2x_admin_priority_app_table*, %struct.bnx2x_admin_priority_app_table** %12, align 8
  %329 = load i64, i64* %6, align 8
  %330 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %328, i64 %329
  %331 = getelementptr inbounds %struct.bnx2x_admin_priority_app_table, %struct.bnx2x_admin_priority_app_table* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %327, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %291
  %335 = load i32, i32* @DCBX_APP_SF_ETH_TYPE, align 4
  br label %338

336:                                              ; preds = %291
  %337 = load i32, i32* @DCBX_APP_SF_PORT, align 4
  br label %338

338:                                              ; preds = %336, %334
  %339 = phi i32 [ %335, %334 ], [ %337, %336 ]
  %340 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %341 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = load i64, i64* %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = or i32 %347, %339
  store i32 %348, i32* %346, align 8
  br label %349

349:                                              ; preds = %338, %239
  br label %350

350:                                              ; preds = %349
  %351 = load i64, i64* %6, align 8
  %352 = add i64 %351, 1
  store i64 %352, i64* %6, align 8
  br label %235

353:                                              ; preds = %235
  %354 = load %struct.bnx2x_config_dcbx_params*, %struct.bnx2x_config_dcbx_params** %11, align 8
  %355 = getelementptr inbounds %struct.bnx2x_config_dcbx_params, %struct.bnx2x_config_dcbx_params* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = inttoptr i64 %356 to i8*
  %358 = load %struct.dcbx_features*, %struct.dcbx_features** %10, align 8
  %359 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  store i8* %357, i8** %360, align 8
  br label %361

361:                                              ; preds = %353, %41
  %362 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %363 = bitcast %struct.lldp_admin_mib* %5 to i64*
  %364 = load i64, i64* %9, align 8
  %365 = call i32 @bnx2x_write_data(%struct.bnx2x* %362, i64* %363, i64 %364, i32 56)
  ret void
}

declare dso_local i64 @LLDP_ADMIN_MIB_OFFSET(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.lldp_admin_mib*, i32, i32) #1

declare dso_local i32 @bnx2x_read_data(%struct.bnx2x*, i64*, i64, i32) #1

declare dso_local i32 @SET_FLAGS(i32, i32) #1

declare dso_local i32 @RESET_FLAGS(i32, i32) #1

declare dso_local i32 @DCBX_PG_BW_SET(i32, i64, i8*) #1

declare dso_local i32 @DP(i32, i8*, i64, i32) #1

declare dso_local i32 @DCBX_PG_BW_GET(i32, i64) #1

declare dso_local i32 @DCBX_PRI_PG_SET(i32, i64, i8*) #1

declare dso_local i32 @DCBX_PRI_PG_GET(i32, i64) #1

declare dso_local i32 @bnx2x_write_data(%struct.bnx2x*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
