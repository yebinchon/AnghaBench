; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_HCA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_HCA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }

@MLX4_CMD_QUERY_HCA = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@INIT_HCA_QPC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_QP_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_SRQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_SRQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_CQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_ALTC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_AUXC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_EQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_EQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_RDMARC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_RD_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FLAGS_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@INIT_HCA_UC_STEERING_OFFSET = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_B0 = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@INIT_HCA_FS_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_LOG_TABLE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_MC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_HASH_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_TABLE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_EQE_CQE_OFFSETS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_EQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_CQE_ENABLED = common dso_local global i32 0, align 4
@INIT_HCA_DMPT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_TPT_MW_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MPT_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_MTT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CMPT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_UAR_PAGE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_UAR_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_HCA_CORE_CLOCK_OFFSET = common dso_local global i32 0, align 4
@QUERY_HCA_GLOBAL_CAPS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %0, %struct.mlx4_init_hca_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_init_hca_param*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_init_hca_param* %1, %struct.mlx4_init_hca_param** %5, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %12 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %11)
  store %struct.mlx4_cmd_mailbox* %12, %struct.mlx4_cmd_mailbox** %6, align 8
  %13 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %14 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %17)
  store i32 %18, i32* %3, align 4
  br label %273

19:                                               ; preds = %2
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MLX4_CMD_QUERY_HCA, align 4
  %28 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %23, i32 0, i32 %26, i32 0, i32 0, i32 %27, i32 %28, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %268

38:                                               ; preds = %19
  %39 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @MLX4_GET(i32 %41, i32* %42, i32 4)
  %44 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @MLX4_GET(i32 %46, i32* %47, i32 12)
  %49 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %50 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @INIT_HCA_QPC_BASE_OFFSET, align 4
  %54 = call i32 @MLX4_GET(i32 %51, i32* %52, i32 %53)
  %55 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @INIT_HCA_LOG_QP_OFFSET, align 4
  %60 = call i32 @MLX4_GET(i32 %57, i32* %58, i32 %59)
  %61 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %62 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @INIT_HCA_SRQC_BASE_OFFSET, align 4
  %66 = call i32 @MLX4_GET(i32 %63, i32* %64, i32 %65)
  %67 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @INIT_HCA_LOG_SRQ_OFFSET, align 4
  %72 = call i32 @MLX4_GET(i32 %69, i32* %70, i32 %71)
  %73 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %74 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @INIT_HCA_CQC_BASE_OFFSET, align 4
  %78 = call i32 @MLX4_GET(i32 %75, i32* %76, i32 %77)
  %79 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %80 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @INIT_HCA_LOG_CQ_OFFSET, align 4
  %84 = call i32 @MLX4_GET(i32 %81, i32* %82, i32 %83)
  %85 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %86 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @INIT_HCA_ALTC_BASE_OFFSET, align 4
  %90 = call i32 @MLX4_GET(i32 %87, i32* %88, i32 %89)
  %91 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %92 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @INIT_HCA_AUXC_BASE_OFFSET, align 4
  %96 = call i32 @MLX4_GET(i32 %93, i32* %94, i32 %95)
  %97 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %98 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @INIT_HCA_EQC_BASE_OFFSET, align 4
  %102 = call i32 @MLX4_GET(i32 %99, i32* %100, i32 %101)
  %103 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %104 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @INIT_HCA_LOG_EQ_OFFSET, align 4
  %108 = call i32 @MLX4_GET(i32 %105, i32* %106, i32 %107)
  %109 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %110 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* @INIT_HCA_RDMARC_BASE_OFFSET, align 4
  %114 = call i32 @MLX4_GET(i32 %111, i32* %112, i32 %113)
  %115 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %116 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* @INIT_HCA_LOG_RD_OFFSET, align 4
  %120 = call i32 @MLX4_GET(i32 %117, i32* %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @INIT_HCA_FLAGS_OFFSET, align 4
  %124 = call i32 @MLX4_GET(i32 %121, i32* %122, i32 %123)
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN, align 4
  %127 = shl i32 1, %126
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %38
  %131 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %132 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %133 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %132, i32 0, i32 14
  store i64 %131, i64* %133, align 8
  br label %151

134:                                              ; preds = %38
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* @INIT_HCA_UC_STEERING_OFFSET, align 4
  %138 = call i32 @MLX4_GET(i32 %135, i32* %136, i32 %137)
  %139 = load i32, i32* %10, align 4
  %140 = and i32 %139, 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i64, i64* @MLX4_STEERING_MODE_B0, align 8
  %144 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %145 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %144, i32 0, i32 14
  store i64 %143, i64* %145, align 8
  br label %150

146:                                              ; preds = %134
  %147 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %148 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %149 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %148, i32 0, i32 14
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150, %130
  %152 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %153 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %152, i32 0, i32 14
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %159 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %158, i32 0, i32 15
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* @INIT_HCA_FS_BASE_OFFSET, align 4
  %163 = call i32 @MLX4_GET(i32 %160, i32* %161, i32 %162)
  %164 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %165 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %164, i32 0, i32 16
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* @INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET, align 4
  %169 = call i32 @MLX4_GET(i32 %166, i32* %167, i32 %168)
  %170 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %171 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %170, i32 0, i32 17
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* @INIT_HCA_FS_LOG_TABLE_SZ_OFFSET, align 4
  %175 = call i32 @MLX4_GET(i32 %172, i32* %173, i32 %174)
  br label %201

176:                                              ; preds = %151
  %177 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %178 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %177, i32 0, i32 15
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* @INIT_HCA_MC_BASE_OFFSET, align 4
  %182 = call i32 @MLX4_GET(i32 %179, i32* %180, i32 %181)
  %183 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %184 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %183, i32 0, i32 16
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET, align 4
  %188 = call i32 @MLX4_GET(i32 %185, i32* %186, i32 %187)
  %189 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %190 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %189, i32 0, i32 18
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* @INIT_HCA_LOG_MC_HASH_SZ_OFFSET, align 4
  %194 = call i32 @MLX4_GET(i32 %191, i32* %192, i32 %193)
  %195 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %196 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %195, i32 0, i32 17
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* @INIT_HCA_LOG_MC_TABLE_SZ_OFFSET, align 4
  %200 = call i32 @MLX4_GET(i32 %197, i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %176, %157
  %202 = load i32, i32* %10, align 4
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* @INIT_HCA_EQE_CQE_OFFSETS, align 4
  %205 = call i32 @MLX4_GET(i32 %202, i32* %203, i32 %204)
  %206 = load i32, i32* %10, align 4
  %207 = and i32 %206, 32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load i32, i32* @MLX4_DEV_CAP_64B_EQE_ENABLED, align 4
  %211 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %212 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %211, i32 0, i32 26
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %201
  %216 = load i32, i32* %10, align 4
  %217 = and i32 %216, 64
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load i32, i32* @MLX4_DEV_CAP_64B_CQE_ENABLED, align 4
  %221 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %222 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %221, i32 0, i32 26
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %215
  %226 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %227 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %226, i32 0, i32 19
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* @INIT_HCA_DMPT_BASE_OFFSET, align 4
  %231 = call i32 @MLX4_GET(i32 %228, i32* %229, i32 %230)
  %232 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %233 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %232, i32 0, i32 20
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* @INIT_HCA_TPT_MW_OFFSET, align 4
  %237 = call i32 @MLX4_GET(i32 %234, i32* %235, i32 %236)
  %238 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %239 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %238, i32 0, i32 21
  %240 = load i32, i32* %239, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = load i32, i32* @INIT_HCA_LOG_MPT_SZ_OFFSET, align 4
  %243 = call i32 @MLX4_GET(i32 %240, i32* %241, i32 %242)
  %244 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %245 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %244, i32 0, i32 22
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* @INIT_HCA_MTT_BASE_OFFSET, align 4
  %249 = call i32 @MLX4_GET(i32 %246, i32* %247, i32 %248)
  %250 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %251 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %250, i32 0, i32 23
  %252 = load i32, i32* %251, align 8
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* @INIT_HCA_CMPT_BASE_OFFSET, align 4
  %255 = call i32 @MLX4_GET(i32 %252, i32* %253, i32 %254)
  %256 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %257 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %256, i32 0, i32 24
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* @INIT_HCA_UAR_PAGE_SZ_OFFSET, align 4
  %261 = call i32 @MLX4_GET(i32 %258, i32* %259, i32 %260)
  %262 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %263 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %262, i32 0, i32 25
  %264 = load i32, i32* %263, align 8
  %265 = load i32*, i32** %7, align 8
  %266 = load i32, i32* @INIT_HCA_LOG_UAR_SZ_OFFSET, align 4
  %267 = call i32 @MLX4_GET(i32 %264, i32* %265, i32 %266)
  br label %268

268:                                              ; preds = %225, %37
  %269 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %270 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %271 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %269, %struct.mlx4_cmd_mailbox* %270)
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %268, %16
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
