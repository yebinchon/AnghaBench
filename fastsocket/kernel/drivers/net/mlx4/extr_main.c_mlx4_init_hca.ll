; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_hca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_profile = type { i32 }
%struct.mlx4_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_adapter = type { i32, i32 }
%struct.mlx4_dev_cap = type { i32 }
%struct.mlx4_mod_stat_cfg = type { i32, i64 }
%struct.mlx4_init_hca_param = type { i32, i32, i64, i64 }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"non-primary physical function, skipping.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"QUERY_FW command failed, aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to start FW, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to override log_pg_sz parameter\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"QUERY_DEV_CAP command failed, aborting.\0A\00", align 1
@default_profile = common dso_local global %struct.mlx4_profile zeroinitializer, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@MLX4_FS_NUM_MCG = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG_MEM_WINDOW = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_TYPE_2_WIN = common dso_local global i32 0, align 4
@INIT_HCA_TPT_MW_ENABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"INIT_HCA command failed, aborting.\0A\00", align 1
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"QUERY_HCA command failed, disable timestamp.\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"HCA frequency is 0. Timestamping is not supported.\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Failed to map internal clock. Timestamping is not supported.\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to initialize slave\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to obtain slave caps\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Failed to map blue flame area\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"QUERY_ADAPTER command failed, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_init_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_hca(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca %struct.mlx4_adapter, align 4
  %6 = alloca %struct.mlx4_dev_cap, align 4
  %7 = alloca %struct.mlx4_mod_stat_cfg, align 8
  %8 = alloca %struct.mlx4_profile, align 4
  %9 = alloca %struct.mlx4_init_hca_param, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %12)
  store %struct.mlx4_priv* %13, %struct.mlx4_priv** %4, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %15 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %208, label %17

17:                                               ; preds = %1
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = call i32 @mlx4_QUERY_FW(%struct.mlx4_dev* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = call i32 @mlx4_info(%struct.mlx4_dev* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = call i32 @mlx4_err(%struct.mlx4_dev* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %2, align 4
  br label %299

35:                                               ; preds = %17
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = call i32 @mlx4_load_fw(%struct.mlx4_dev* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %42 = call i32 @mlx4_err(%struct.mlx4_dev* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %2, align 4
  br label %299

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.mlx4_mod_stat_cfg, %struct.mlx4_mod_stat_cfg* %7, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.mlx4_mod_stat_cfg, %struct.mlx4_mod_stat_cfg* %7, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %48 = call i32 @mlx4_MOD_STAT_CFG(%struct.mlx4_dev* %47, %struct.mlx4_mod_stat_cfg* %7)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %53 = call i32 @mlx4_warn(%struct.mlx4_dev* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %56 = call i32 @mlx4_dev_cap(%struct.mlx4_dev* %55, %struct.mlx4_dev_cap* %6)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %61 = call i32 @mlx4_err(%struct.mlx4_dev* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %284

62:                                               ; preds = %54
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %64 = call i32 @choose_steering_mode(%struct.mlx4_dev* %63, %struct.mlx4_dev_cap* %6)
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %66 = call i64 @mlx4_is_master(%struct.mlx4_dev* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %70 = call i32 @mlx4_parav_master_pf_caps(%struct.mlx4_dev* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = bitcast %struct.mlx4_profile* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 bitcast (%struct.mlx4_profile* @default_profile to i8*), i64 4, i1 false)
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @MLX4_FS_NUM_MCG, align 4
  %81 = getelementptr inbounds %struct.mlx4_profile, %struct.mlx4_profile* %8, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %84 = call i32 @mlx4_make_profile(%struct.mlx4_dev* %83, %struct.mlx4_profile* %8, %struct.mlx4_dev_cap* %6, %struct.mlx4_init_hca_param* %9)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %11, align 4
  br label %284

90:                                               ; preds = %82
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %92 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ilog2(i32 %94)
  %96 = sub nsw i32 32, %95
  %97 = shl i32 1, %96
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %100 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ilog2(i32 %105)
  %107 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %9, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i64, i64* @PAGE_SHIFT, align 8
  %109 = sub nsw i64 %108, 12
  %110 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %9, i32 0, i32 3
  store i64 %109, i64* %110, align 8
  %111 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %9, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %113 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MLX4_DEV_CAP_FLAG_MEM_WINDOW, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %90
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %121 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MLX4_BMME_FLAG_TYPE_2_WIN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119, %90
  %128 = load i64, i64* @INIT_HCA_TPT_MW_ENABLE, align 8
  %129 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %9, i32 0, i32 2
  store i64 %128, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %119
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @mlx4_init_icm(%struct.mlx4_dev* %131, %struct.mlx4_dev_cap* %6, %struct.mlx4_init_hca_param* %9, i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %284

137:                                              ; preds = %130
  %138 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %139 = call i32 @mlx4_INIT_HCA(%struct.mlx4_dev* %138, %struct.mlx4_init_hca_param* %9)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %144 = call i32 @mlx4_err(%struct.mlx4_dev* %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %276

145:                                              ; preds = %137
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %207

153:                                              ; preds = %145
  %154 = call i32 @memset(%struct.mlx4_init_hca_param* %9, i32 0, i32 24)
  %155 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %156 = call i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %155, %struct.mlx4_init_hca_param* %9)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %161 = call i32 @mlx4_err(%struct.mlx4_dev* %160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %165 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %163
  store i32 %168, i32* %166, align 4
  br label %175

169:                                              ; preds = %153
  %170 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %9, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %173 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  store i32 %171, i32* %174, align 8
  br label %175

175:                                              ; preds = %169, %159
  %176 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %177 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %185 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, %183
  store i32 %188, i32* %186, align 4
  %189 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %190 = call i32 @mlx4_err(%struct.mlx4_dev* %189, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %206

191:                                              ; preds = %175
  %192 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %193 = call i64 @map_internal_clock(%struct.mlx4_dev* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %199 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, %197
  store i32 %202, i32* %200, align 4
  %203 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %204 = call i32 @mlx4_err(%struct.mlx4_dev* %203, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %205

205:                                              ; preds = %195, %191
  br label %206

206:                                              ; preds = %205, %181
  br label %207

207:                                              ; preds = %206, %145
  br label %226

208:                                              ; preds = %1
  %209 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %210 = call i32 @mlx4_init_slave(%struct.mlx4_dev* %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %215 = call i32 @mlx4_err(%struct.mlx4_dev* %214, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %216 = load i32, i32* %11, align 4
  store i32 %216, i32* %2, align 4
  br label %299

217:                                              ; preds = %208
  %218 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %219 = call i32 @mlx4_slave_cap(%struct.mlx4_dev* %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %224 = call i32 @mlx4_err(%struct.mlx4_dev* %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %265

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %207
  %227 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %228 = call i64 @map_bf_area(%struct.mlx4_dev* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %232 = call i32 @mlx4_dbg(%struct.mlx4_dev* %231, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %226
  %234 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %235 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %239 = call i32 @mlx4_set_port_mask(%struct.mlx4_dev* %238)
  br label %240

240:                                              ; preds = %237, %233
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %242 = call i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev* %241, %struct.mlx4_adapter* %5)
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %247 = call i32 @mlx4_err(%struct.mlx4_dev* %246, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %260

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %5, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %252 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 4
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %255 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %5, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @memcpy(i32 %256, i32 %258, i32 4)
  store i32 0, i32* %2, align 4
  br label %299

260:                                              ; preds = %245
  %261 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %262 = call i32 @unmap_internal_clock(%struct.mlx4_dev* %261)
  %263 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %264 = call i32 @unmap_bf_area(%struct.mlx4_dev* %263)
  br label %265

265:                                              ; preds = %260, %222
  %266 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %267 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %271 = call i32 @mlx4_slave_exit(%struct.mlx4_dev* %270)
  br label %275

272:                                              ; preds = %265
  %273 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %274 = call i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev* %273, i32 0)
  br label %275

275:                                              ; preds = %272, %269
  br label %276

276:                                              ; preds = %275, %142
  %277 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %278 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %282 = call i32 @mlx4_free_icms(%struct.mlx4_dev* %281)
  br label %283

283:                                              ; preds = %280, %276
  br label %284

284:                                              ; preds = %283, %136, %88, %59
  %285 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %286 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %297, label %288

288:                                              ; preds = %284
  %289 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %290 = call i32 @mlx4_UNMAP_FA(%struct.mlx4_dev* %289)
  %291 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %292 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %293 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %291, i32 %295, i32 0)
  br label %297

297:                                              ; preds = %288, %284
  %298 = load i32, i32* %11, align 4
  store i32 %298, i32* %2, align 4
  br label %299

299:                                              ; preds = %297, %248, %213, %40, %33
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QUERY_FW(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_load_fw(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_MOD_STAT_CFG(%struct.mlx4_dev*, %struct.mlx4_mod_stat_cfg*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_dev_cap(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i32 @choose_steering_mode(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_parav_master_pf_caps(%struct.mlx4_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_make_profile(%struct.mlx4_dev*, %struct.mlx4_profile*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_init_icm(%struct.mlx4_dev*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*, i32) #1

declare dso_local i32 @mlx4_INIT_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @memset(%struct.mlx4_init_hca_param*, i32, i32) #1

declare dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i64 @map_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_cap(%struct.mlx4_dev*) #1

declare dso_local i64 @map_bf_area(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_set_port_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev*, %struct.mlx4_adapter*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @unmap_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i32 @unmap_bf_area(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_exit(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_free_icms(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_UNMAP_FA(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
